# --- LogD with atompair features ---

astra benchmark features/antiviral-admet-2025/LogD_atompair_train.pkl \
    --name LogD_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_atompair_train.pkl \
    --name LogD_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_atompair_train.pkl \
    --name LogD_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_atompair_train.pkl \
    --name LogD_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with avalon features ---

astra benchmark features/antiviral-admet-2025/LogD_avalon_train.pkl \
    --name LogD_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_avalon_train.pkl \
    --name LogD_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_avalon_train.pkl \
    --name LogD_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_avalon_train.pkl \
    --name LogD_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with cats2d features ---

astra benchmark features/antiviral-admet-2025/LogD_cats2d_train.pkl \
    --name LogD_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_cats2d_train.pkl \
    --name LogD_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_cats2d_train.pkl \
    --name LogD_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_cats2d_train.pkl \
    --name LogD_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with desc2D features ---

astra benchmark features/antiviral-admet-2025/LogD_desc2D_train.pkl \
    --name LogD_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_desc2D_train.pkl \
    --name LogD_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_desc2D_train.pkl \
    --name LogD_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_desc2D_train.pkl \
    --name LogD_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with ecfp features ---

astra benchmark features/antiviral-admet-2025/LogD_ecfp_train.pkl \
    --name LogD_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_ecfp_train.pkl \
    --name LogD_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_ecfp_train.pkl \
    --name LogD_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_ecfp_train.pkl \
    --name LogD_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with estate features ---

astra benchmark features/antiviral-admet-2025/LogD_estate_train.pkl \
    --name LogD_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_estate_train.pkl \
    --name LogD_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_estate_train.pkl \
    --name LogD_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_estate_train.pkl \
    --name LogD_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with fcfp features ---

astra benchmark features/antiviral-admet-2025/LogD_fcfp_train.pkl \
    --name LogD_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_fcfp_train.pkl \
    --name LogD_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_fcfp_train.pkl \
    --name LogD_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_fcfp_train.pkl \
    --name LogD_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with maccs features ---

astra benchmark features/antiviral-admet-2025/LogD_maccs_train.pkl \
    --name LogD_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_maccs_train.pkl \
    --name LogD_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_maccs_train.pkl \
    --name LogD_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_maccs_train.pkl \
    --name LogD_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with pmapper features ---

astra benchmark features/antiviral-admet-2025/LogD_pmapper_train.pkl \
    --name LogD_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_pmapper_train.pkl \
    --name LogD_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_pmapper_train.pkl \
    --name LogD_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_pmapper_train.pkl \
    --name LogD_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with rdkit features ---

astra benchmark features/antiviral-admet-2025/LogD_rdkit_train.pkl \
    --name LogD_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_rdkit_train.pkl \
    --name LogD_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_rdkit_train.pkl \
    --name LogD_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_rdkit_train.pkl \
    --name LogD_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with scaffoldkeys features ---

astra benchmark features/antiviral-admet-2025/LogD_scaffoldkeys_train.pkl \
    --name LogD_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_scaffoldkeys_train.pkl \
    --name LogD_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_scaffoldkeys_train.pkl \
    --name LogD_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_scaffoldkeys_train.pkl \
    --name LogD_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- LogD with topological features ---

astra benchmark features/antiviral-admet-2025/LogD_topological_train.pkl \
    --name LogD_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_topological_train.pkl \
    --name LogD_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_topological_train.pkl \
    --name LogD_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/LogD_topological_train.pkl \
    --name LogD_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
