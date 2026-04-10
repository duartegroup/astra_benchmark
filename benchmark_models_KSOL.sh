# --- KSOL with atompair features ---

astra benchmark features/antiviral-admet-2025/KSOL_atompair_train.pkl \
    --name KSOL_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_atompair_train.pkl \
    --name KSOL_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_atompair_train.pkl \
    --name KSOL_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_atompair_train.pkl \
    --name KSOL_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with avalon features ---

astra benchmark features/antiviral-admet-2025/KSOL_avalon_train.pkl \
    --name KSOL_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_avalon_train.pkl \
    --name KSOL_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_avalon_train.pkl \
    --name KSOL_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_avalon_train.pkl \
    --name KSOL_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with cats2d features ---

astra benchmark features/antiviral-admet-2025/KSOL_cats2d_train.pkl \
    --name KSOL_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_cats2d_train.pkl \
    --name KSOL_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_cats2d_train.pkl \
    --name KSOL_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_cats2d_train.pkl \
    --name KSOL_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with desc2D features ---

astra benchmark features/antiviral-admet-2025/KSOL_desc2D_train.pkl \
    --name KSOL_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_desc2D_train.pkl \
    --name KSOL_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_desc2D_train.pkl \
    --name KSOL_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_desc2D_train.pkl \
    --name KSOL_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with ecfp features ---

astra benchmark features/antiviral-admet-2025/KSOL_ecfp_train.pkl \
    --name KSOL_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_ecfp_train.pkl \
    --name KSOL_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_ecfp_train.pkl \
    --name KSOL_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_ecfp_train.pkl \
    --name KSOL_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with estate features ---

astra benchmark features/antiviral-admet-2025/KSOL_estate_train.pkl \
    --name KSOL_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_estate_train.pkl \
    --name KSOL_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_estate_train.pkl \
    --name KSOL_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_estate_train.pkl \
    --name KSOL_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with fcfp features ---

astra benchmark features/antiviral-admet-2025/KSOL_fcfp_train.pkl \
    --name KSOL_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_fcfp_train.pkl \
    --name KSOL_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_fcfp_train.pkl \
    --name KSOL_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_fcfp_train.pkl \
    --name KSOL_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with maccs features ---

astra benchmark features/antiviral-admet-2025/KSOL_maccs_train.pkl \
    --name KSOL_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_maccs_train.pkl \
    --name KSOL_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_maccs_train.pkl \
    --name KSOL_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_maccs_train.pkl \
    --name KSOL_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with pmapper features ---

astra benchmark features/antiviral-admet-2025/KSOL_pmapper_train.pkl \
    --name KSOL_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_pmapper_train.pkl \
    --name KSOL_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_pmapper_train.pkl \
    --name KSOL_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_pmapper_train.pkl \
    --name KSOL_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with rdkit features ---

astra benchmark features/antiviral-admet-2025/KSOL_rdkit_train.pkl \
    --name KSOL_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_rdkit_train.pkl \
    --name KSOL_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_rdkit_train.pkl \
    --name KSOL_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_rdkit_train.pkl \
    --name KSOL_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with scaffoldkeys features ---

astra benchmark features/antiviral-admet-2025/KSOL_scaffoldkeys_train.pkl \
    --name KSOL_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_scaffoldkeys_train.pkl \
    --name KSOL_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_scaffoldkeys_train.pkl \
    --name KSOL_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_scaffoldkeys_train.pkl \
    --name KSOL_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- KSOL with topological features ---

astra benchmark features/antiviral-admet-2025/KSOL_topological_train.pkl \
    --name KSOL_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_topological_train.pkl \
    --name KSOL_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_topological_train.pkl \
    --name KSOL_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/KSOL_topological_train.pkl \
    --name KSOL_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
