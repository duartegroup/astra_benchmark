import pickle
import pandas as pd
import numpy as np
from astra.models.regression import REGRESSORS
from astra.utils import get_estimator_name
from sklearn.metrics import mean_squared_error
from scipy.stats import spearmanr


def get_best_model(df: pd.DataFrame, mode: str = "mean") -> str:
    """
    Get the model with the best mean or median score.

    Parameters
    ----------
    df : pd.DataFrame
        DataFrame containing model scores.
    mode : str
        'mean' or 'median' to specify which statistic to use.

    Returns
    -------
    str
        Name of the model with the best average score.
    """
    best = None
    lowest_score = float("inf")
    for model_name in df.columns:
        score_list = df[model_name].iloc[0]
        if mode == "median":
            current_score = pd.Series(score_list).median()
        elif mode == "mean":
            current_score = pd.Series(score_list).mean()
        else:
            raise ValueError("Mode must be 'mean' or 'median'.")
        if current_score < lowest_score:
            lowest_score = current_score
            best = model_name
    return best


def get_spearman_correlation(
    df: pd.DataFrame,
    X_train: np.ndarray,
    y_train: np.ndarray,
    X_test: np.ndarray,
    y_test: np.ndarray,
) -> tuple[float, float]:
    """
    Get the Spearman correlation between median CV scores and test performances.

    Parameters
    ----------
    df : pd.DataFrame
        DataFrame containing model CV scores.
    X_train : np.ndarray
        Training features.
    y_train : np.ndarray
        Training targets.
    X_test : np.ndarray
        Test features.
    y_test : np.ndarray
        Test targets.

    Returns
    -------
    tuple[float, float]
        Spearman correlation coefficient and p-value.
    """
    median_cv_scores = []
    for model_name in df.columns:
        score_list = df[model_name].iloc[0]
        median_cv_scores.append(pd.Series(score_list).median())
    test_performances = []
    for model_name in df.columns:
        model = REGRESSORS[model_name]
        model.fit(X_train, y_train)
        predictions = model.predict(X_test)
        mse = mean_squared_error(y_test, predictions)
        test_performances.append(mse)
    correlation, pval = spearmanr(median_cv_scores, test_performances)
    return correlation, pval


def get_test_performances(experiment_name: str, training_data: str, test_data: str):
    """
    Get test performances of ASTRA model and best models by mean and median CV scores.

    Parameters
    ----------
    experiment_name : str
        Name of the experiment to load results from.
    training_data : str
        Path to the training data pickle file.
    test_data : str
        Path to the test data pickle file.

    Returns
    -------
    tuple
        Mean squared errors of ASTRA model, best mean model, and best median model.
    """
    with open(f"results/{experiment_name}/default_CV.pkl", "rb") as f:
        default_CV = pickle.load(f)
    with open(f"results/{experiment_name}/final_model.pkl", "rb") as f:
        final_model = pickle.load(f)
    astra_model_name = get_estimator_name(final_model)
    df_default_CV = pd.DataFrame(default_CV)
    best_model_mean_name = get_best_model(df_default_CV, mode="mean")
    best_model_median_name = get_best_model(df_default_CV, mode="median")
    astra_model = REGRESSORS[astra_model_name]
    best_model_mean = REGRESSORS[best_model_mean_name]
    best_model_median = REGRESSORS[best_model_median_name]

    train_X_y = pd.read_pickle(training_data)
    X_train = np.array(train_X_y["Features"].to_list())
    y_train = train_X_y["Target"].values
    astra_model.fit(X_train, y_train)
    best_model_mean.fit(X_train, y_train)
    best_model_median.fit(X_train, y_train)
    test_X_y = pd.read_pickle(test_data)
    X_test = np.array(test_X_y["Features"].to_list())
    y_test = test_X_y["Target"].values
    predictions_astra = astra_model.predict(X_test)
    predictions_best_mean = best_model_mean.predict(X_test)
    predictions_best_median = best_model_median.predict(X_test)

    mse_astra = mean_squared_error(y_test, predictions_astra)
    mse_best_mean = mean_squared_error(y_test, predictions_best_mean)
    mse_best_median = mean_squared_error(y_test, predictions_best_median)
    correlation, pval = get_spearman_correlation(
        df_default_CV,
        X_train,
        y_train,
        X_test,
        y_test,
    )
    return mse_astra, mse_best_mean, mse_best_median, correlation, pval


def collect_results(dataset: str, kind: str = "admet"):
    """
    Collect benchmark results for a given dataset.

    Parameters
    ----------
    dataset : str
        Name of the dataset.
    kind : str
        Type of dataset ('admet' or 'potency').

    Returns
    -------
    dict
        Dictionary containing benchmark results.
    """
    results = {}
    for feat in features:
        results[feat] = {}
        for split in splits:
            experiment_name = f"{dataset}_{feat}_{split}"
            training_data = f"features/antiviral-{kind}-2025/{dataset}_{feat}_train.pkl"
            test_data = f"features/antiviral-{kind}-2025/{dataset}_{feat}_test.pkl"
            mse_astra, mse_best_mean, mse_best_median, correlation, pval = (
                get_test_performances(experiment_name, training_data, test_data)
            )
            results[feat][split] = {
                "ASTRA": mse_astra,
                "Mean": mse_best_mean,
                "Median": mse_best_median,
                "Correlation": correlation,
                "p-value": pval,
            }
    return results


if __name__ == "__main__":
    features = [
        "cats2d",
        "pmapper",
        "scaffoldkeys",
        "desc2D",
        "estate",
        "rdkit",
        "fcfp",
        "ecfp",
        "atompair",
        "maccs",
        "avalon",
        "topological",
    ]
    splits = ["random", "butina", "bemismurcko", "kmeans"]
    LogD_results = collect_results("LogD", kind="admet")
    with open("results/LogD_results.pkl", "wb") as f:
        pickle.dump(LogD_results, f)
    HLM_results = collect_results("HLM", kind="admet")
    with open("results/HLM_results.pkl", "wb") as f:
        pickle.dump(HLM_results, f)
    KSOL_results = collect_results("KSOL", kind="admet")
    with open("results/KSOL_results.pkl", "wb") as f:
        pickle.dump(KSOL_results, f)
    MDR1_MDCKII_results = collect_results("MDR1_MDCKII", kind="admet")
    with open("results/MDR1_MDCKII_results.pkl", "wb") as f:
        pickle.dump(MDR1_MDCKII_results, f)
    MLM_results = collect_results("MLM", kind="admet")
    with open("results/MLM_results.pkl", "wb") as f:
        pickle.dump(MLM_results, f)
    SARS_results = collect_results("SARS", kind="potency")
    with open("results/SARS_results.pkl", "wb") as f:
        pickle.dump(SARS_results, f)
    MERS_results = collect_results("MERS", kind="potency")
    with open("results/MERS_results.pkl", "wb") as f:
        pickle.dump(MERS_results, f)
