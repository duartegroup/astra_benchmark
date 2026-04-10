import datamol as dm
from molfeat.trans import MoleculeTransformer
from molfeat.trans.fp import FPVecTransformer
from molfeat.calc.pharmacophore import Pharmacophore2D
import numpy as np
import pandas as pd
import useful_rdkit_utils as uru
import pickle
import os


def prep_mol(smiles: str) -> dm.Mol:
    """
    Create a datamol Mol object from a SMILES string and apply some
    preprocessing steps.

    Parameters
    ----------
    smiles : str
        A SMILES string.

    Returns
    -------
    dm.Mol
        A datamol Mol object.
    """
    mol = dm.to_mol(smiles)
    mol = dm.fix_mol(mol, remove_singleton=True, largest_only=True)
    mol = dm.sanitize_mol(mol, verbose=False)
    mol = dm.standardize_mol(mol, uncharge=True)
    return mol


def featurise(
    transformer: MoleculeTransformer,
    molecules: list[dm.Mol],
    save_dir: str,
    desc: str,
) -> None:
    """
    Featurise a list of molecules using a MoleculeTransformer object and
    save the features to disk.

    Parameters
    ----------
    transformer : MoleculeTransformer
        A MoleculeTransformer object for generating features.
    molecules: list[dm.Mol]
        A list of datamol Mol objects.
    save_dir : str
        Directory to save the features to.
    desc : str
        A description of the features being generated.
    """
    features = transformer(molecules)
    os.makedirs(save_dir, exist_ok=True)
    np.save(f"{save_dir}/{desc}.npy", features)


if __name__ == "__main__":
    # Load cleaned data
    with open("processed_data/y_train_admet.pkl", "rb") as f:
        y_train_admet = pickle.load(f)
    with open("processed_data/y_test_admet.pkl", "rb") as f:
        y_test_admet = pickle.load(f)
    with open("processed_data/y_train_potency.pkl", "rb") as f:
        y_train_potency = pickle.load(f)
    with open("processed_data/y_test_potency.pkl", "rb") as f:
        y_test_potency = pickle.load(f)

    # Create a directory to save the features
    save_dir_admet = "features/antiviral-admet-2025"
    os.makedirs(save_dir_admet, exist_ok=True)
    save_dir_potency = "features/antiviral-potency-2025"
    os.makedirs(save_dir_potency, exist_ok=True)

    # Get all unique SMILES strings
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

    # Get Molecule objects
    all_unique_mols = [prep_mol(smi) for smi in all_unique_smiles]

    # Generate features
    mol_transformer_descs = ["cats2d", "pmapper", "scaffoldkeys"]
    for desc in mol_transformer_descs:
        if desc == "pmapper":
            pharmacophore_gen = Pharmacophore2D(factory="pmapper")
            transformer = MoleculeTransformer(
                featurizer=pharmacophore_gen, dtype=float, n_jobs=4
            )
        else:
            transformer = MoleculeTransformer(featurizer=desc, dtype=float, n_jobs=4)
        if not os.path.exists(f"features/{desc}.npy"):
            featurise(transformer, all_unique_mols, save_dir="features", desc=desc)

    fp_vec_descs = [
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
    for desc in fp_vec_descs:
        transformer = FPVecTransformer(kind=desc, dtype=float, n_jobs=4)
        if not os.path.exists(f"features/{desc}.npy"):
            featurise(transformer, all_unique_mols, save_dir="features", desc=desc)

    # Split datasets using different splitting methods
    for dataset in ["MDR1_MDCKII", "HLM", "KSOL", "MLM", "LogD", "MERS", "SARS"]:
        train_dict = y_train_admet if dataset in y_train_admet else y_train_potency
        df = pd.DataFrame.from_dict(train_dict[dataset])
        smiles_list = df["SMILES"].tolist()
        for random_seed in [42, 7, 21, 100, 1234]:
            for clustering_type, name in zip(
                [
                    uru.get_random_clusters,
                    uru.get_butina_clusters,
                    uru.get_bemis_murcko_clusters,
                    uru.get_kmeans_clusters,
                ],
                [
                    "Random",
                    "Butina",
                    "BemisMurcko",
                    "KMeans",
                ],
            ):
                if name == "KMeans":
                    cluster_labels = clustering_type(smiles_list, n_clusters=50)
                elif name == "Butina":
                    cluster_labels = clustering_type(smiles_list, cutoff=0.4)
                else:
                    cluster_labels = clustering_type(smiles_list)
                kf = uru.GroupKFoldShuffle(
                    n_splits=5, shuffle=True, random_state=random_seed
                )
                for i, (train_idx, test_idx) in enumerate(
                    kf.split(train_dict[dataset], groups=cluster_labels)
                ):
                    df.loc[test_idx, f"{name}_Cluster_{random_seed}"] = i
                df[f"{name}_Cluster_{random_seed}"] = df[
                    f"{name}_Cluster_{random_seed}"
                ].astype(int)
        df.to_pickle(f"processed_data/{dataset}_train_splits.pkl")

    # Create dataframes in an ASTRA-compatible format
    smiles_to_index = {all_unique_smiles[i]: i for i in range(len(all_unique_smiles))}
    for feat in mol_transformer_descs + fp_vec_descs:
        features = np.load(f"features/{feat}.npy")
        for dataset in ["MDR1_MDCKII", "HLM", "KSOL", "MLM", "LogD", "MERS", "SARS"]:
            save_dir = save_dir_admet if dataset in y_train_admet else save_dir_potency
            train_dict = y_train_admet if dataset in y_train_admet else y_train_potency
            if not os.path.exists(f"{save_dir}/{dataset}_{feat}_train.pkl"):
                indices = [
                    smiles_to_index[smi] for smi in train_dict[dataset]["SMILES"]
                ]
                feats_for_df = features[indices]
                smiles_for_df = train_dict[dataset]["SMILES"]
                targets_for_df = train_dict[dataset]["Values"]
                df = pd.DataFrame(
                    {
                        "SMILES": smiles_for_df,
                        "Features": list(feats_for_df),
                        "Target": targets_for_df,
                    }
                )
                split_file = f"processed_data/{dataset}_train_splits.pkl"
                split_df = pd.read_pickle(split_file)
                for col in split_df.columns:
                    if "Cluster" in col:
                        df[col] = split_df[col].values
                df.to_pickle(f"{save_dir}/{dataset}_{feat}_train.pkl")
