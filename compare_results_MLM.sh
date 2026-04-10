astra compare results/MLM_atompair_random results/MLM_avalon_random results/MLM_cats2d_random \
              results/MLM_desc2D_random results/MLM_ecfp_random results/MLM_estate_random \
              results/MLM_fcfp_random results/MLM_maccs_random results/MLM_pmapper_random \
              results/MLM_rdkit_random results/MLM_scaffoldkeys_random results/MLM_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_MLM.log 2>&1

astra compare results/MLM_atompair_kmeans results/MLM_avalon_kmeans results/MLM_cats2d_kmeans \
              results/MLM_desc2D_kmeans results/MLM_ecfp_kmeans results/MLM_estate_kmeans \
              results/MLM_fcfp_kmeans results/MLM_maccs_kmeans results/MLM_pmapper_kmeans \
              results/MLM_rdkit_kmeans results/MLM_scaffoldkeys_kmeans results/MLM_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MLM.log 2>&1

astra compare results/MLM_atompair_butina results/MLM_avalon_butina results/MLM_cats2d_butina \
              results/MLM_desc2D_butina results/MLM_ecfp_butina results/MLM_estate_butina \
              results/MLM_fcfp_butina results/MLM_maccs_butina results/MLM_pmapper_butina \
              results/MLM_rdkit_butina results/MLM_scaffoldkeys_butina results/MLM_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MLM.log 2>&1

astra compare results/MLM_atompair_bemismurcko results/MLM_avalon_bemismurcko results/MLM_cats2d_bemismurcko \
              results/MLM_desc2D_bemismurcko results/MLM_ecfp_bemismurcko results/MLM_estate_bemismurcko \
              results/MLM_fcfp_bemismurcko results/MLM_maccs_bemismurcko results/MLM_pmapper_bemismurcko \
              results/MLM_rdkit_bemismurcko results/MLM_scaffoldkeys_bemismurcko results/MLM_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MLM.log 2>&1
