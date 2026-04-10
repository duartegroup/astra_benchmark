astra compare results/MERS_atompair_random results/MERS_avalon_random results/MERS_cats2d_random \
              results/MERS_desc2D_random results/MERS_ecfp_random results/MERS_estate_random \
              results/MERS_fcfp_random results/MERS_maccs_random results/MERS_pmapper_random \
              results/MERS_rdkit_random results/MERS_scaffoldkeys_random results/MERS_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_MERS.log 2>&1

astra compare results/MERS_atompair_kmeans results/MERS_avalon_kmeans results/MERS_cats2d_kmeans \
              results/MERS_desc2D_kmeans results/MERS_ecfp_kmeans results/MERS_estate_kmeans \
              results/MERS_fcfp_kmeans results/MERS_maccs_kmeans results/MERS_pmapper_kmeans \
              results/MERS_rdkit_kmeans results/MERS_scaffoldkeys_kmeans results/MERS_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MERS.log 2>&1

astra compare results/MERS_atompair_butina results/MERS_avalon_butina results/MERS_cats2d_butina \
              results/MERS_desc2D_butina results/MERS_ecfp_butina results/MERS_estate_butina \
              results/MERS_fcfp_butina results/MERS_maccs_butina results/MERS_pmapper_butina \
              results/MERS_rdkit_butina results/MERS_scaffoldkeys_butina results/MERS_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MERS.log 2>&1

astra compare results/MERS_atompair_bemismurcko results/MERS_avalon_bemismurcko results/MERS_cats2d_bemismurcko \
              results/MERS_desc2D_bemismurcko results/MERS_ecfp_bemismurcko results/MERS_estate_bemismurcko \
              results/MERS_fcfp_bemismurcko results/MERS_maccs_bemismurcko results/MERS_pmapper_bemismurcko \
              results/MERS_rdkit_bemismurcko results/MERS_scaffoldkeys_bemismurcko results/MERS_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MERS.log 2>&1
