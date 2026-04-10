# --- MLM with atompair features ---

astra benchmark features/antiviral-admet-2025/MLM_atompair_train.pkl \
    --name MLM_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_atompair_train.pkl \
    --name MLM_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_atompair_train.pkl \
    --name MLM_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_atompair_train.pkl \
    --name MLM_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with avalon features ---

astra benchmark features/antiviral-admet-2025/MLM_avalon_train.pkl \
    --name MLM_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_avalon_train.pkl \
    --name MLM_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_avalon_train.pkl \
    --name MLM_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_avalon_train.pkl \
    --name MLM_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with cats2d features ---

astra benchmark features/antiviral-admet-2025/MLM_cats2d_train.pkl \
    --name MLM_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_cats2d_train.pkl \
    --name MLM_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_cats2d_train.pkl \
    --name MLM_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_cats2d_train.pkl \
    --name MLM_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with desc2D features ---

astra benchmark features/antiviral-admet-2025/MLM_desc2D_train.pkl \
    --name MLM_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_desc2D_train.pkl \
    --name MLM_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_desc2D_train.pkl \
    --name MLM_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_desc2D_train.pkl \
    --name MLM_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with ecfp features ---

astra benchmark features/antiviral-admet-2025/MLM_ecfp_train.pkl \
    --name MLM_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_ecfp_train.pkl \
    --name MLM_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_ecfp_train.pkl \
    --name MLM_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_ecfp_train.pkl \
    --name MLM_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with estate features ---

astra benchmark features/antiviral-admet-2025/MLM_estate_train.pkl \
    --name MLM_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_estate_train.pkl \
    --name MLM_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_estate_train.pkl \
    --name MLM_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_estate_train.pkl \
    --name MLM_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with fcfp features ---

astra benchmark features/antiviral-admet-2025/MLM_fcfp_train.pkl \
    --name MLM_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_fcfp_train.pkl \
    --name MLM_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_fcfp_train.pkl \
    --name MLM_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_fcfp_train.pkl \
    --name MLM_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with maccs features ---

astra benchmark features/antiviral-admet-2025/MLM_maccs_train.pkl \
    --name MLM_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_maccs_train.pkl \
    --name MLM_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_maccs_train.pkl \
    --name MLM_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_maccs_train.pkl \
    --name MLM_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with pmapper features ---

astra benchmark features/antiviral-admet-2025/MLM_pmapper_train.pkl \
    --name MLM_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_pmapper_train.pkl \
    --name MLM_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_pmapper_train.pkl \
    --name MLM_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_pmapper_train.pkl \
    --name MLM_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with rdkit features ---

astra benchmark features/antiviral-admet-2025/MLM_rdkit_train.pkl \
    --name MLM_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_rdkit_train.pkl \
    --name MLM_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_rdkit_train.pkl \
    --name MLM_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_rdkit_train.pkl \
    --name MLM_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with scaffoldkeys features ---

astra benchmark features/antiviral-admet-2025/MLM_scaffoldkeys_train.pkl \
    --name MLM_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_scaffoldkeys_train.pkl \
    --name MLM_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_scaffoldkeys_train.pkl \
    --name MLM_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_scaffoldkeys_train.pkl \
    --name MLM_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MLM with topological features ---

astra benchmark features/antiviral-admet-2025/MLM_topological_train.pkl \
    --name MLM_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_topological_train.pkl \
    --name MLM_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_21 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_topological_train.pkl \
    --name MLM_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/MLM_topological_train.pkl \
    --name MLM_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
