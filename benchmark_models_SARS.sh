# --- SARS with atompair features ---

astra benchmark features/antiviral-potency-2025/SARS_atompair_train.pkl \
    --name SARS_atompair_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_atompair_train.pkl \
    --name SARS_atompair_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_atompair_train.pkl \
    --name SARS_atompair_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_atompair_train.pkl \
    --name SARS_atompair_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with avalon features ---

astra benchmark features/antiviral-potency-2025/SARS_avalon_train.pkl \
    --name SARS_avalon_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_avalon_train.pkl \
    --name SARS_avalon_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_avalon_train.pkl \
    --name SARS_avalon_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_avalon_train.pkl \
    --name SARS_avalon_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with cats2d features ---

astra benchmark features/antiviral-potency-2025/SARS_cats2d_train.pkl \
    --name SARS_cats2d_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_cats2d_train.pkl \
    --name SARS_cats2d_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_cats2d_train.pkl \
    --name SARS_cats2d_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_cats2d_train.pkl \
    --name SARS_cats2d_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with desc2D features ---

astra benchmark features/antiviral-potency-2025/SARS_desc2D_train.pkl \
    --name SARS_desc2D_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_desc2D_train.pkl \
    --name SARS_desc2D_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_desc2D_train.pkl \
    --name SARS_desc2D_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_desc2D_train.pkl \
    --name SARS_desc2D_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with ecfp features ---

astra benchmark features/antiviral-potency-2025/SARS_ecfp_train.pkl \
    --name SARS_ecfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_ecfp_train.pkl \
    --name SARS_ecfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_ecfp_train.pkl \
    --name SARS_ecfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_ecfp_train.pkl \
    --name SARS_ecfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with estate features ---

astra benchmark features/antiviral-potency-2025/SARS_estate_train.pkl \
    --name SARS_estate_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_estate_train.pkl \
    --name SARS_estate_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_estate_train.pkl \
    --name SARS_estate_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_estate_train.pkl \
    --name SARS_estate_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with fcfp features ---

astra benchmark features/antiviral-potency-2025/SARS_fcfp_train.pkl \
    --name SARS_fcfp_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_fcfp_train.pkl \
    --name SARS_fcfp_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_fcfp_train.pkl \
    --name SARS_fcfp_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_fcfp_train.pkl \
    --name SARS_fcfp_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with maccs features ---

astra benchmark features/antiviral-potency-2025/SARS_maccs_train.pkl \
    --name SARS_maccs_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_maccs_train.pkl \
    --name SARS_maccs_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_maccs_train.pkl \
    --name SARS_maccs_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_maccs_train.pkl \
    --name SARS_maccs_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with pmapper features ---

astra benchmark features/antiviral-potency-2025/SARS_pmapper_train.pkl \
    --name SARS_pmapper_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_pmapper_train.pkl \
    --name SARS_pmapper_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_pmapper_train.pkl \
    --name SARS_pmapper_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_pmapper_train.pkl \
    --name SARS_pmapper_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with rdkit features ---

astra benchmark features/antiviral-potency-2025/SARS_rdkit_train.pkl \
    --name SARS_rdkit_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_rdkit_train.pkl \
    --name SARS_rdkit_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_rdkit_train.pkl \
    --name SARS_rdkit_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_rdkit_train.pkl \
    --name SARS_rdkit_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with scaffoldkeys features ---

astra benchmark features/antiviral-potency-2025/SARS_scaffoldkeys_train.pkl \
    --name SARS_scaffoldkeys_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_scaffoldkeys_train.pkl \
    --name SARS_scaffoldkeys_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_scaffoldkeys_train.pkl \
    --name SARS_scaffoldkeys_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_scaffoldkeys_train.pkl \
    --name SARS_scaffoldkeys_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

# --- SARS with topological features ---

astra benchmark features/antiviral-potency-2025/SARS_topological_train.pkl \
    --name SARS_topological_random \
    --use_optuna \
    --fold_col Random_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_topological_train.pkl \
    --name SARS_topological_butina \
    --use_optuna \
    --fold_col Butina_Cluster_42 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_topological_train.pkl \
    --name SARS_topological_bemismurcko \
    --use_optuna \
    --fold_col BemisMurcko_Cluster_1234 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4

astra benchmark features/antiviral-potency-2025/SARS_topological_train.pkl \
    --name SARS_topological_kmeans \
    --use_optuna \
    --fold_col KMeans_Cluster_100 \
    --main_metric MSE \
    --sec_metrics R2 MAE \
    --n_jobs 4
