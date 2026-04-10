astra compare results/SARS_atompair_random results/SARS_avalon_random results/SARS_cats2d_random \
              results/SARS_desc2D_random results/SARS_ecfp_random results/SARS_estate_random \
              results/SARS_fcfp_random results/SARS_maccs_random results/SARS_pmapper_random \
              results/SARS_rdkit_random results/SARS_scaffoldkeys_random results/SARS_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_SARS.log 2>&1

astra compare results/SARS_atompair_kmeans results/SARS_avalon_kmeans results/SARS_cats2d_kmeans \
              results/SARS_desc2D_kmeans results/SARS_ecfp_kmeans results/SARS_estate_kmeans \
              results/SARS_fcfp_kmeans results/SARS_maccs_kmeans results/SARS_pmapper_kmeans \
              results/SARS_rdkit_kmeans results/SARS_scaffoldkeys_kmeans results/SARS_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_SARS.log 2>&1

astra compare results/SARS_atompair_butina results/SARS_avalon_butina results/SARS_cats2d_butina \
              results/SARS_desc2D_butina results/SARS_ecfp_butina results/SARS_estate_butina \
              results/SARS_fcfp_butina results/SARS_maccs_butina results/SARS_pmapper_butina \
              results/SARS_rdkit_butina results/SARS_scaffoldkeys_butina results/SARS_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_SARS.log 2>&1

astra compare results/SARS_atompair_bemismurcko results/SARS_avalon_bemismurcko results/SARS_cats2d_bemismurcko \
              results/SARS_desc2D_bemismurcko results/SARS_ecfp_bemismurcko results/SARS_estate_bemismurcko \
              results/SARS_fcfp_bemismurcko results/SARS_maccs_bemismurcko results/SARS_pmapper_bemismurcko \
              results/SARS_rdkit_bemismurcko results/SARS_scaffoldkeys_bemismurcko results/SARS_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_SARS.log 2>&1
