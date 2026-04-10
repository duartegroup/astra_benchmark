import pickle
import os
import pandas as pd
import numpy as np
from astra.models.regression import REGRESSORS
from astra.models.classification import CLASSIFIERS
from astra.utils import get_estimator_name
from sklearn.metrics import mean_squared_error, roc_auc_score


def get_best_model(
    df: pd.DataFrame, mode: str = "mean", lower_better: bool = True
) -> str:
    """
    Get the model with the best mean or median score.

    Parameters
    ----------
    df : pd.DataFrame
        DataFrame containing model scores.
    mode : str
        'mean' or 'median' to specify which statistic to use.
    lower_better : bool
        Whether lower scores are better (e.g., for MSE) or higher scores are better (e.g., for AUC).

    Returns
    -------
    str
        Name of the model with the best average score.
    """
    best = None
    best_score = float("inf") if lower_better else float("-inf")
    for model_name in df.columns:
        score_list = df[model_name].iloc[0]
        if mode == "median":
            current_score = pd.Series(score_list).median()
        elif mode == "mean":
            current_score = pd.Series(score_list).mean()
        else:
            raise ValueError("Mode must be 'mean' or 'median'.")
        if (lower_better and current_score < best_score) or (
            not lower_better and current_score > best_score
        ):
            best_score = current_score
            best = model_name
    return best


def get_test_performances(
    experiment_name: str,
    training_data: str,
    test_data: str,
    classification: bool = False,
) -> tuple:
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
    classification : bool
        Whether the task is classification or regression.

    Returns
    -------
    tuple
        Tuple of test performance metrics for ASTRA model, best mean model,
        and best median model.
    """
    with open(f"results/{experiment_name}/default_CV.pkl", "rb") as f:
        default_CV = pickle.load(f)
    with open(os.path.join("results", experiment_name, "final_model.pkl"), "rb") as f:
        astra_model_optimised = pickle.load(f)
    astra_model_name = get_estimator_name(astra_model_optimised)
    df_default_CV = pd.DataFrame(default_CV)
    best_model_mean_name = get_best_model(
        df_default_CV, mode="mean", lower_better=not classification
    )
    best_model_median_name = get_best_model(
        df_default_CV, mode="median", lower_better=not classification
    )
    astra_model = (
        CLASSIFIERS[astra_model_name]
        if classification
        else REGRESSORS[astra_model_name]
    )
    best_model_mean = (
        CLASSIFIERS[best_model_mean_name]
        if classification
        else REGRESSORS[best_model_mean_name]
    )
    best_model_median = (
        CLASSIFIERS[best_model_median_name]
        if classification
        else REGRESSORS[best_model_median_name]
    )

    train_X_y = pd.read_pickle(training_data)
    X_train = np.array(train_X_y["Features"].to_list())
    y_train = train_X_y["Target"].values
    astra_model.fit(X_train, y_train)
    best_model_mean.fit(X_train, y_train)
    best_model_median.fit(X_train, y_train)
    with open(test_data, "rb") as f:
        X_test, y_test = pickle.load(f)

    if classification:
        predictions_astra = astra_model.predict_proba(X_test)[:, 1]
        predictions_best_mean = best_model_mean.predict_proba(X_test)[:, 1]
        predictions_best_median = best_model_median.predict_proba(X_test)[:, 1]
        auc_astra = roc_auc_score(y_test, predictions_astra)
        auc_best_mean = roc_auc_score(y_test, predictions_best_mean)
        auc_best_median = roc_auc_score(y_test, predictions_best_median)
        return auc_astra, auc_best_mean, auc_best_median
    else:
        predictions_astra = astra_model.predict(X_test)
        predictions_best_mean = best_model_mean.predict(X_test)
        predictions_best_median = best_model_median.predict(X_test)
        mse_astra = mean_squared_error(y_test, predictions_astra)
        mse_best_mean = mean_squared_error(y_test, predictions_best_mean)
        mse_best_median = mean_squared_error(y_test, predictions_best_median)
        return mse_astra, mse_best_mean, mse_best_median


def collect_results(dataset: str, classification: bool = False) -> dict:
    """
    Collect benchmark results for a given dataset.

    Parameters
    ----------
    dataset : str
        Name of the dataset.
    classification : bool
        Whether the task is classification or regression.

    Returns
    -------
    dict
        Dictionary containing benchmark results.
    """
    results = {}
    training_data = f"synthetic_datasets/{dataset}_train.pkl"
    test_data = f"synthetic_datasets/{dataset}_test.pkl"
    astra, best_mean, best_median = get_test_performances(
        dataset, training_data, test_data, classification=classification
    )
    results = {
        "ASTRA": astra,
        "Mean": best_mean,
        "Median": best_median,
    }
    return results


if __name__ == "__main__":
    # Classification datasets
    classification_results = {}
    if os.path.exists(os.path.join("results", "classification_results_syn.pkl")):
        with open(os.path.join("results", "classification_results_syn.pkl"), "rb") as f:
            classification_results = pickle.load(f)
    for n_samples in [100, 1000, 5000, 10000]:
        n_features_list = [
            int(0.1 * n_samples),
            int(0.5 * n_samples),
            int(1 * n_samples),
        ]
        for n_features in n_features_list:
            n_informative_list = [
                int(0.25 * n_features),
                int(0.5 * n_features),
                int(0.75 * n_features),
            ]
            for n_informative in n_informative_list:
                n_redundant_list = [
                    0,
                    int(0.1 * n_informative),
                    int(0.2 * n_informative),
                ]
                for n_redundant in n_redundant_list:
                    n_repeated_list = [
                        0,
                        int(0.01 * n_redundant),
                        int(0.05 * n_redundant),
                    ]
                    for n_repeated in n_repeated_list:
                        for weights in [[0.5, 0.5], [0.7, 0.3], [0.9, 0.1]]:
                            dataset_name = f"classification_ns{n_samples}_nf{n_features}_ni{n_informative}_nr{n_redundant}_nrep{n_repeated}_w{'-'.join(map(str, weights))}"
                            if dataset_name in classification_results:
                                print(f"Skipping {dataset_name}, already processed.")
                                continue
                            results = collect_results(dataset_name, classification=True)
                            classification_results[dataset_name] = results
                            with open(
                                os.path.join(
                                    "results", "classification_results_syn.pkl"
                                ),
                                "wb",
                            ) as f:
                                pickle.dump(classification_results, f)

    # Regression datasets
    regression_results = {}
    if os.path.exists(os.path.join("results", "regression_results_syn.pkl")):
        with open(os.path.join("results", "regression_results_syn.pkl"), "rb") as f:
            regression_results = pickle.load(f)
    for n_samples in [100, 1000, 5000, 10000]:
        n_features_list = [
            int(0.1 * n_samples),
            int(0.5 * n_samples),
            int(1 * n_samples),
        ]
        for n_features in n_features_list:
            n_informative_list = [
                int(0.25 * n_features),
                int(0.5 * n_features),
                int(0.75 * n_features),
                int(1.0 * n_features),
            ]
            for n_informative in n_informative_list:
                effective_rank_list = [
                    None,
                    int(0.5 * n_features),
                    int(0.75 * n_features),
                ]
                for effective_rank in effective_rank_list:
                    for noise in [1, 5, 10]:
                        dataset_name = f"regression_ns{n_samples}_nf{n_features}_ni{n_informative}_er{effective_rank}_noise{noise}"
                        if dataset_name in regression_results:
                            print(f"Skipping {dataset_name}, already processed.")
                            continue
                        results = collect_results(dataset_name, classification=False)
                        regression_results[dataset_name] = results
                        with open(
                            os.path.join("results", "regression_results_syn.pkl"), "wb"
                        ) as f:
                            pickle.dump(regression_results, f)
