# --- HLM with atompair features ---

astra benchmark features/antiviral-admet-2025/HLM_atompair_train.pkl \
    --name HLM_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_atompair_train.pkl \
    --name HLM_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_atompair_train.pkl \
    --name HLM_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_atompair_train.pkl \
    --name HLM_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with avalon features ---

astra benchmark features/antiviral-admet-2025/HLM_avalon_train.pkl \
    --name HLM_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_avalon_train.pkl \
    --name HLM_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_avalon_train.pkl \
    --name HLM_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_avalon_train.pkl \
    --name HLM_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with cats2d features ---

astra benchmark features/antiviral-admet-2025/HLM_cats2d_train.pkl \
    --name HLM_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_cats2d_train.pkl \
    --name HLM_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_cats2d_train.pkl \
    --name HLM_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_cats2d_train.pkl \
    --name HLM_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with desc2D features ---

astra benchmark features/antiviral-admet-2025/HLM_desc2D_train.pkl \
    --name HLM_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_desc2D_train.pkl \
    --name HLM_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_desc2D_train.pkl \
    --name HLM_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_desc2D_train.pkl \
    --name HLM_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with ecfp features ---

astra benchmark features/antiviral-admet-2025/HLM_ecfp_train.pkl \
    --name HLM_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_ecfp_train.pkl \
    --name HLM_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_ecfp_train.pkl \
    --name HLM_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_ecfp_train.pkl \
    --name HLM_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with estate features ---

astra benchmark features/antiviral-admet-2025/HLM_estate_train.pkl \
    --name HLM_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_estate_train.pkl \
    --name HLM_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_estate_train.pkl \
    --name HLM_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_estate_train.pkl \
    --name HLM_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with fcfp features ---

astra benchmark features/antiviral-admet-2025/HLM_fcfp_train.pkl \
    --name HLM_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_fcfp_train.pkl \
    --name HLM_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_fcfp_train.pkl \
    --name HLM_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_fcfp_train.pkl \
    --name HLM_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with maccs features ---

astra benchmark features/antiviral-admet-2025/HLM_maccs_train.pkl \
    --name HLM_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_maccs_train.pkl \
    --name HLM_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_maccs_train.pkl \
    --name HLM_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_maccs_train.pkl \
    --name HLM_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with pmapper features ---

astra benchmark features/antiviral-admet-2025/HLM_pmapper_train.pkl \
    --name HLM_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_pmapper_train.pkl \
    --name HLM_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_pmapper_train.pkl \
    --name HLM_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_pmapper_train.pkl \
    --name HLM_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with rdkit features ---

astra benchmark features/antiviral-admet-2025/HLM_rdkit_train.pkl \
    --name HLM_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_rdkit_train.pkl \
    --name HLM_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_rdkit_train.pkl \
    --name HLM_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_rdkit_train.pkl \
    --name HLM_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with scaffoldkeys features ---

astra benchmark features/antiviral-admet-2025/HLM_scaffoldkeys_train.pkl \
    --name HLM_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_scaffoldkeys_train.pkl \
    --name HLM_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_scaffoldkeys_train.pkl \
    --name HLM_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_scaffoldkeys_train.pkl \
    --name HLM_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- HLM with topological features ---

astra benchmark features/antiviral-admet-2025/HLM_topological_train.pkl \
    --name HLM_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_topological_train.pkl \
    --name HLM_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_topological_train.pkl \
    --name HLM_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-admet-2025/HLM_topological_train.pkl \
    --name HLM_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
