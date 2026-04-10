# --- MERS with atompair features ---

astra benchmark features/antiviral-potency-2025/MERS_atompair_train.pkl \
    --name MERS_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_atompair_train.pkl \
    --name MERS_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_atompair_train.pkl \
    --name MERS_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_atompair_train.pkl \
    --name MERS_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with avalon features ---

astra benchmark features/antiviral-potency-2025/MERS_avalon_train.pkl \
    --name MERS_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_avalon_train.pkl \
    --name MERS_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_avalon_train.pkl \
    --name MERS_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_avalon_train.pkl \
    --name MERS_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with cats2d features ---

astra benchmark features/antiviral-potency-2025/MERS_cats2d_train.pkl \
    --name MERS_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_cats2d_train.pkl \
    --name MERS_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_cats2d_train.pkl \
    --name MERS_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_cats2d_train.pkl \
    --name MERS_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with desc2D features ---

astra benchmark features/antiviral-potency-2025/MERS_desc2D_train.pkl \
    --name MERS_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_desc2D_train.pkl \
    --name MERS_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_desc2D_train.pkl \
    --name MERS_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_desc2D_train.pkl \
    --name MERS_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with ecfp features ---

astra benchmark features/antiviral-potency-2025/MERS_ecfp_train.pkl \
    --name MERS_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_ecfp_train.pkl \
    --name MERS_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_ecfp_train.pkl \
    --name MERS_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_ecfp_train.pkl \
    --name MERS_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with estate features ---

astra benchmark features/antiviral-potency-2025/MERS_estate_train.pkl \
    --name MERS_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_estate_train.pkl \
    --name MERS_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_estate_train.pkl \
    --name MERS_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_estate_train.pkl \
    --name MERS_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with fcfp features ---

astra benchmark features/antiviral-potency-2025/MERS_fcfp_train.pkl \
    --name MERS_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_fcfp_train.pkl \
    --name MERS_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_fcfp_train.pkl \
    --name MERS_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_fcfp_train.pkl \
    --name MERS_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with maccs features ---

astra benchmark features/antiviral-potency-2025/MERS_maccs_train.pkl \
    --name MERS_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_maccs_train.pkl \
    --name MERS_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_maccs_train.pkl \
    --name MERS_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_maccs_train.pkl \
    --name MERS_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with pmapper features ---

astra benchmark features/antiviral-potency-2025/MERS_pmapper_train.pkl \
    --name MERS_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_pmapper_train.pkl \
    --name MERS_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_pmapper_train.pkl \
    --name MERS_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_pmapper_train.pkl \
    --name MERS_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with rdkit features ---

astra benchmark features/antiviral-potency-2025/MERS_rdkit_train.pkl \
    --name MERS_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_rdkit_train.pkl \
    --name MERS_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_rdkit_train.pkl \
    --name MERS_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_rdkit_train.pkl \
    --name MERS_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with scaffoldkeys features ---

astra benchmark features/antiviral-potency-2025/MERS_scaffoldkeys_train.pkl \
    --name MERS_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_scaffoldkeys_train.pkl \
    --name MERS_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_scaffoldkeys_train.pkl \
    --name MERS_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_scaffoldkeys_train.pkl \
    --name MERS_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- MERS with topological features ---

astra benchmark features/antiviral-potency-2025/MERS_topological_train.pkl \
    --name MERS_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_topological_train.pkl \
    --name MERS_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_topological_train.pkl \
    --name MERS_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_7 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/MERS_topological_train.pkl \
    --name MERS_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
