import os
import pickle
import pandas as pd
import numpy as np
from sklearn.datasets import make_classification, make_regression
from sklearn.model_selection import train_test_split
from sklearn.model_selection import KFold, StratifiedKFold


def prepare_for_ASTRA(
    X_train: np.ndarray, y_train: np.ndarray, stratify: bool = False
) -> pd.DataFrame:
    """
    Prepare the training data for ASTRA by creating 5-fold cross-validation splits
    and returning a pd.DataFrame with the following columns:
    - 'Features': a list of feature vectors for each sample
    - 'Target': the corresponding label for each sample
    - 'Fold': the fold number (0-4) for cross-validation

    Parameters
    ----------
    X_train : array-like, shape (n_samples, n_features)
        The training feature matrix.
    y_train : array-like, shape (n_samples,)
        The training labels.
    stratify : bool, optional (default=False)
        Whether to use stratified splitting for classification tasks.

    Returns
    -------
    pd.DataFrame
        A DataFrame containing the features, target labels, and fold assignments.
    """
    if stratify:
        kf = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
    else:
        kf = KFold(n_splits=5, shuffle=True, random_state=42)
    folds = np.empty(len(X_train), dtype=int)
    for fold, (_, val_index) in enumerate(kf.split(X_train, y_train)):
        folds[val_index] = fold
    df = pd.DataFrame({"Features": list(X_train), "Target": y_train, "Fold": folds})
    return df


if __name__ == "__main__":
    # create a directory to save the datasets
    os.makedirs("synthetic_datasets", exist_ok=True)

    # 531 synthetic classification datasets
    for n_samples in [100, 1000, 5000, 10000]:
        # for every n_samples, vary n_features as 10%, 50%, 100% of n_samples
        n_features_list = [
            int(0.1 * n_samples),
            int(0.5 * n_samples),
            int(1 * n_samples),
        ]
        for n_features in n_features_list:
            # for every n_features, vary n_informative as 25%, 50%, 75% of n_features
            n_informative_list = [
                int(0.25 * n_features),
                int(0.5 * n_features),
                int(0.75 * n_features),
            ]
            for n_informative in n_informative_list:
                # for every n_informative, vary n_redundant as 0%, 10%, 20% of n_informative
                n_redundant_list = [
                    0,
                    int(0.1 * n_informative),
                    int(0.2 * n_informative),
                ]
                for n_redundant in n_redundant_list:
                    # for every n_redundant, vary n_repeated as 0%, 1%, 5% of n_redundant
                    n_repeated_list = [
                        0,
                        int(0.01 * n_redundant),
                        int(0.05 * n_redundant),
                    ]
                    for n_repeated in n_repeated_list:
                        for weights in [[0.5, 0.5], [0.7, 0.3], [0.9, 0.1]]:
                            X, y = make_classification(
                                n_samples=n_samples,
                                n_features=n_features,
                                n_informative=n_informative,
                                n_redundant=n_redundant,
                                n_repeated=n_repeated,
                                random_state=42,
                                weights=weights,
                            )
                            # set aside 10% of the data as test set
                            X_train, X_test, y_train, y_test = train_test_split(
                                X, y, test_size=0.1, random_state=42, stratify=y
                            )
                            df_train = prepare_for_ASTRA(
                                X_train, y_train, stratify=True
                            )
                            dataset_name = f"classification_ns{n_samples}_nf{n_features}_ni{n_informative}_nr{n_redundant}_nrep{n_repeated}_w{'-'.join(map(str, weights))}_train.pkl"
                            df_train.to_pickle(
                                os.path.join("synthetic_datasets", dataset_name)
                            )
                            dataset_name = f"classification_ns{n_samples}_nf{n_features}_ni{n_informative}_nr{n_redundant}_nrep{n_repeated}_w{'-'.join(map(str, weights))}_test.pkl"
                            with open(
                                os.path.join("synthetic_datasets", dataset_name), "wb"
                            ) as f:
                                pickle.dump((X_test, y_test), f)
                            print(
                                f"Generated classification dataset: ns={n_samples}, nf={n_features}, ni={n_informative}, nr={n_redundant}, nrep={n_repeated}, weights={weights}"
                            )

    # 432 synthetic regression datasets
    for n_samples in [100, 1000, 5000, 10000]:
        # for every n_samples, vary n_features as 10%, 50%, 100% of n_samples
        n_features_list = [
            int(0.1 * n_samples),
            int(0.5 * n_samples),
            int(1 * n_samples),
        ]
        for n_features in n_features_list:
            # for every n_features, vary n_informative as 25%, 50%, 75%, and 100% of n_features
            n_informative_list = [
                int(0.25 * n_features),
                int(0.5 * n_features),
                int(0.75 * n_features),
                int(1.0 * n_features),
            ]
            for n_informative in n_informative_list:
                # for every n_informative, vary effective_rank as None, 50%, 75% of n_features
                effective_rank_list = [
                    None,
                    int(0.5 * n_features),
                    int(0.75 * n_features),
                ]
                for effective_rank in effective_rank_list:
                    for noise in [1, 5, 10]:
                        X, y = make_regression(
                            n_samples=n_samples,
                            n_features=n_features,
                            n_informative=n_informative,
                            effective_rank=effective_rank,
                            noise=noise,
                            random_state=42,
                        )
                        # set aside 10% of the data as test set
                        X_train, X_test, y_train, y_test = train_test_split(
                            X, y, test_size=0.1, random_state=42
                        )
                        df_train = prepare_for_ASTRA(X_train, y_train, stratify=False)
                        dataset_name = f"regression_ns{n_samples}_nf{n_features}_ni{n_informative}_er{effective_rank}_noise{noise}_train.pkl"
                        df_train.to_pickle(
                            os.path.join("synthetic_datasets", dataset_name)
                        )
                        dataset_name = f"regression_ns{n_samples}_nf{n_features}_ni{n_informative}_er{effective_rank}_noise{noise}_test.pkl"
                        with open(
                            os.path.join("synthetic_datasets", dataset_name), "wb"
                        ) as f:
                            pickle.dump((X_test, y_test), f)
                        print(
                            f"Generated regression dataset: ns={n_samples}, nf={n_features}, ni={n_informative}, er={effective_rank}, noise={noise}"
                        )
