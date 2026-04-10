import pickle
import pandas as pd
import numpy as np

if __name__ == "__main__":
    with open("processed_data/y_train_admet.pkl", "rb") as f:
        y_train_admet = pickle.load(f)
    with open("processed_data/y_test_admet.pkl", "rb") as f:
        y_test_admet = pickle.load(f)
    with open("processed_data/y_train_potency.pkl", "rb") as f:
        y_train_potency = pickle.load(f)
    with open("processed_data/y_test_potency.pkl", "rb") as f:
        y_test_potency = pickle.load(f)
    all_smiles_admet = list(
        set(
            y_train_admet["MDR1_MDCKII"]["SMILES"]
            + y_test_admet["MDR1_MDCKII"]["SMILES"]
            + y_train_admet["HLM"]["SMILES"]
            + y_test_admet["HLM"]["SMILES"]
            + y_train_admet["KSOL"]["SMILES"]
            + y_test_admet["KSOL"]["SMILES"]
            + y_train_admet["MLM"]["SMILES"]
            + y_test_admet["MLM"]["SMILES"]
            + y_train_admet["LogD"]["SMILES"]
            + y_test_admet["LogD"]["SMILES"]
        )
    )
    all_smiles_potency = list(
        set(
            y_train_potency["MERS"]["SMILES"]
            + y_test_potency["MERS"]["SMILES"]
            + y_train_potency["SARS"]["SMILES"]
            + y_test_potency["SARS"]["SMILES"]
        )
    )
    all_unique_smiles = sorted(set(all_smiles_admet + all_smiles_potency))
    smiles_to_index = {all_unique_smiles[i]: i for i in range(len(all_unique_smiles))}

    for feat in [
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
    ]:
        features = np.load(f"features/{feat}.npy")
        for dataset in ["MDR1_MDCKII", "HLM", "KSOL", "MLM", "LogD", "MERS", "SARS"]:
            save_dir = (
                "features/antiviral-admet-2025"
                if dataset in y_test_admet
                else "features/antiviral-potency-2025"
            )
            test_dict = y_test_admet if dataset in y_test_admet else y_test_potency
            indices = [smiles_to_index[smi] for smi in test_dict[dataset]["SMILES"]]
            feats_for_df = features[indices]
            smiles_for_df = test_dict[dataset]["SMILES"]
            targets_for_df = test_dict[dataset]["Values"]
            df = pd.DataFrame(
                {
                    "SMILES": smiles_for_df,
                    "Features": list(feats_for_df),
                    "Target": targets_for_df,
                }
            )
            df.to_pickle(f"{save_dir}/{dataset}_{feat}_test.pkl")
