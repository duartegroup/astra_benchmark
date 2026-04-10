import polaris as po
import numpy as np
import pickle
import os


def filter_nan(data: list[dict], key: str) -> tuple[list, list]:
    """
    Filter out NaN values from a list of dictionaries for a given key and
    return the corresponding values and SMILES strings.

    Parameters
    ----------
    data : list[dict]
        A list of dictionaries containing the data.
    key : str
        The key to filter on.

    Returns
    -------
    tuple[list, list]
        A tuple containing a list of values and a list of SMILES strings.
    """
    values = [data[i][key] for i in range(len(data)) if not np.isnan(data[i][key])]
    smiles = [
        data[i]["CXSMILES"] for i in range(len(data)) if not np.isnan(data[i][key])
    ]
    return values, smiles


def clip_and_log_transform(y: np.ndarray):
    """
    Clip to detection limit and transform to log10 scale.

    Parameters
    ----------
    y : np.ndarray
        The array to be clipped and transformed.

    Returns
    -------
    np.ndarray
        The clipped and log-transformed array.
    """
    y = np.clip(y, a_min=0, a_max=None)
    return np.log10(y + 1)


def clean_data(
    data: list[dict], key: str, log_transform: bool = False
) -> tuple[np.ndarray, list]:
    """
    Get clean values and SMILES strings from a list of dictionaries for a
    given key, with optional log transformation.

    Parameters
    ----------
    data : list[dict]
        A list of dictionaries containing the data.
    key : str
        The key to filter on.
    log_transform : bool, optional
        Whether to apply log transformation, by default False.

    Returns
    -------
    tuple[np.ndarray, list]
        A tuple containing an array of values and a list of SMILES strings.
    """
    vals, smiles = filter_nan(data, key)
    if log_transform:
        vals = clip_and_log_transform(np.array(vals))
    else:
        vals = np.array(vals)
    return vals, smiles


if __name__ == "__main__":
    admet_data = po.load_dataset("asap-discovery/antiviral-admet-2025-unblinded")
    potency_data = po.load_dataset("asap-discovery/antiviral-potency-2025-unblinded")

    admet_train = []
    admet_test = []
    for i in range(0, len(admet_data)):
        if admet_data[i]["Set"] == "Test":
            admet_test.append(admet_data[i])
        elif admet_data[i]["Set"] == "Train":
            admet_train.append(admet_data[i])

    potency_train = []
    potency_test = []
    for i in range(0, len(potency_data)):
        if potency_data[i]["Set"] == "Test":
            potency_test.append(potency_data[i])
        elif potency_data[i]["Set"] == "Train":
            potency_train.append(potency_data[i])

    MDR1MDCKII_train_vals, MDR1MDCKII_train_smiles = clean_data(
        admet_train, "MDR1-MDCKII", log_transform=True
    )
    MDR1MDCKII_test_vals, MDR1MDCKII_test_smiles = clean_data(
        admet_test, "MDR1-MDCKII", log_transform=True
    )
    HLM_train_vals, HLM_train_smiles = clean_data(
        admet_train, "HLM", log_transform=True
    )
    HLM_test_vals, HLM_test_smiles = clean_data(admet_test, "HLM", log_transform=True)
    KSOL_train_vals, KSOL_train_smiles = clean_data(
        admet_train, "KSOL", log_transform=True
    )
    KSOL_test_vals, KSOL_test_smiles = clean_data(
        admet_test, "KSOL", log_transform=True
    )
    MLM_train_vals, MLM_train_smiles = clean_data(
        admet_train, "MLM", log_transform=True
    )
    MLM_test_vals, MLM_test_smiles = clean_data(admet_test, "MLM", log_transform=True)
    LogD_train_vals, LogD_train_smiles = clean_data(admet_train, "LogD")
    LogD_test_vals, LogD_test_smiles = clean_data(admet_test, "LogD")

    y_train_admet = {}
    y_train_admet["MDR1_MDCKII"] = {}
    y_train_admet["MDR1_MDCKII"]["SMILES"] = MDR1MDCKII_train_smiles
    y_train_admet["MDR1_MDCKII"]["Values"] = MDR1MDCKII_train_vals
    y_train_admet["HLM"] = {}
    y_train_admet["HLM"]["SMILES"] = HLM_train_smiles
    y_train_admet["HLM"]["Values"] = HLM_train_vals
    y_train_admet["KSOL"] = {}
    y_train_admet["KSOL"]["SMILES"] = KSOL_train_smiles
    y_train_admet["KSOL"]["Values"] = KSOL_train_vals
    y_train_admet["MLM"] = {}
    y_train_admet["MLM"]["SMILES"] = MLM_train_smiles
    y_train_admet["MLM"]["Values"] = MLM_train_vals
    y_train_admet["LogD"] = {}
    y_train_admet["LogD"]["SMILES"] = LogD_train_smiles
    y_train_admet["LogD"]["Values"] = LogD_train_vals
    y_test_admet = {}
    y_test_admet["MDR1_MDCKII"] = {}
    y_test_admet["MDR1_MDCKII"]["SMILES"] = MDR1MDCKII_test_smiles
    y_test_admet["MDR1_MDCKII"]["Values"] = MDR1MDCKII_test_vals
    y_test_admet["HLM"] = {}
    y_test_admet["HLM"]["SMILES"] = HLM_test_smiles
    y_test_admet["HLM"]["Values"] = HLM_test_vals
    y_test_admet["KSOL"] = {}
    y_test_admet["KSOL"]["SMILES"] = KSOL_test_smiles
    y_test_admet["KSOL"]["Values"] = KSOL_test_vals
    y_test_admet["MLM"] = {}
    y_test_admet["MLM"]["SMILES"] = MLM_test_smiles
    y_test_admet["MLM"]["Values"] = MLM_test_vals
    y_test_admet["LogD"] = {}
    y_test_admet["LogD"]["SMILES"] = LogD_test_smiles
    y_test_admet["LogD"]["Values"] = LogD_test_vals

    MERS_train_vals, MERS_train_smiles = clean_data(
        potency_train, "pIC50 (MERS-CoV Mpro)"
    )
    MERS_test_vals, MERS_test_smiles = clean_data(potency_test, "pIC50 (MERS-CoV Mpro)")
    SARS_train_vals, SARS_train_smiles = clean_data(
        potency_train, "pIC50 (SARS-CoV-2 Mpro)"
    )
    SARS_test_vals, SARS_test_smiles = clean_data(
        potency_test, "pIC50 (SARS-CoV-2 Mpro)"
    )

    y_train_potency = {}
    y_train_potency["MERS"] = {}
    y_train_potency["MERS"]["Values"] = MERS_train_vals
    y_train_potency["MERS"]["SMILES"] = MERS_train_smiles
    y_train_potency["SARS"] = {}
    y_train_potency["SARS"]["Values"] = SARS_train_vals
    y_train_potency["SARS"]["SMILES"] = SARS_train_smiles
    y_test_potency = {}
    y_test_potency["MERS"] = {}
    y_test_potency["MERS"]["Values"] = MERS_test_vals
    y_test_potency["MERS"]["SMILES"] = MERS_test_smiles
    y_test_potency["SARS"] = {}
    y_test_potency["SARS"]["Values"] = SARS_test_vals
    y_test_potency["SARS"]["SMILES"] = SARS_test_smiles

    os.makedirs("processed_data", exist_ok=True)
    with open("processed_data/y_train_admet.pkl", "wb") as f:
        pickle.dump(y_train_admet, f)
    with open("processed_data/y_test_admet.pkl", "wb") as f:
        pickle.dump(y_test_admet, f)
    with open("processed_data/y_train_potency.pkl", "wb") as f:
        pickle.dump(y_train_potency, f)
    with open("processed_data/y_test_potency.pkl", "wb") as f:
        pickle.dump(y_test_potency, f)
