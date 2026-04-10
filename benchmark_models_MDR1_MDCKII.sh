# --- MDR1_MDCKII with atompair features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_atompair_train.pkl \
    --name MDR1_MDCKII_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_atompair_train.pkl \
    --name MDR1_MDCKII_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_atompair_train.pkl \
    --name MDR1_MDCKII_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_atompair_train.pkl \
    --name MDR1_MDCKII_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with avalon features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_avalon_train.pkl \
    --name MDR1_MDCKII_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_avalon_train.pkl \
    --name MDR1_MDCKII_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_avalon_train.pkl \
    --name MDR1_MDCKII_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_avalon_train.pkl \
    --name MDR1_MDCKII_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with cats2d features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_cats2d_train.pkl \
    --name MDR1_MDCKII_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_cats2d_train.pkl \
    --name MDR1_MDCKII_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_cats2d_train.pkl \
    --name MDR1_MDCKII_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_cats2d_train.pkl \
    --name MDR1_MDCKII_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with desc2D features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_desc2D_train.pkl \
    --name MDR1_MDCKII_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_desc2D_train.pkl \
    --name MDR1_MDCKII_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_desc2D_train.pkl \
    --name MDR1_MDCKII_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_desc2D_train.pkl \
    --name MDR1_MDCKII_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with ecfp features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_ecfp_train.pkl \
    --name MDR1_MDCKII_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_ecfp_train.pkl \
    --name MDR1_MDCKII_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_ecfp_train.pkl \
    --name MDR1_MDCKII_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_ecfp_train.pkl \
    --name MDR1_MDCKII_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with estate features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_estate_train.pkl \
    --name MDR1_MDCKII_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_estate_train.pkl \
    --name MDR1_MDCKII_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_estate_train.pkl \
    --name MDR1_MDCKII_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_estate_train.pkl \
    --name MDR1_MDCKII_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with fcfp features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_fcfp_train.pkl \
    --name MDR1_MDCKII_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_fcfp_train.pkl \
    --name MDR1_MDCKII_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_fcfp_train.pkl \
    --name MDR1_MDCKII_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_fcfp_train.pkl \
    --name MDR1_MDCKII_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with maccs features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_maccs_train.pkl \
    --name MDR1_MDCKII_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_maccs_train.pkl \
    --name MDR1_MDCKII_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_maccs_train.pkl \
    --name MDR1_MDCKII_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_maccs_train.pkl \
    --name MDR1_MDCKII_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with pmapper features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_pmapper_train.pkl \
    --name MDR1_MDCKII_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_pmapper_train.pkl \
    --name MDR1_MDCKII_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_pmapper_train.pkl \
    --name MDR1_MDCKII_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_pmapper_train.pkl \
    --name MDR1_MDCKII_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with rdkit features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_rdkit_train.pkl \
    --name MDR1_MDCKII_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_rdkit_train.pkl \
    --name MDR1_MDCKII_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_rdkit_train.pkl \
    --name MDR1_MDCKII_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_rdkit_train.pkl \
    --name MDR1_MDCKII_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with scaffoldkeys features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_scaffoldkeys_train.pkl \
    --name MDR1_MDCKII_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_scaffoldkeys_train.pkl \
    --name MDR1_MDCKII_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_scaffoldkeys_train.pkl \
    --name MDR1_MDCKII_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_scaffoldkeys_train.pkl \
    --name MDR1_MDCKII_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MDR1_MDCKII with topological features ---

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_topological_train.pkl \
    --name MDR1_MDCKII_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_topological_train.pkl \
    --name MDR1_MDCKII_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_topological_train.pkl \
    --name MDR1_MDCKII_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MDR1_MDCKII_topological_train.pkl \
    --name MDR1_MDCKII_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
