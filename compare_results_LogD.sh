astra compare results/LogD_atompair_random results/LogD_avalon_random results/LogD_cats2d_random \
              results/LogD_desc2D_random results/LogD_ecfp_random results/LogD_estate_random \
              results/LogD_fcfp_random results/LogD_maccs_random results/LogD_pmapper_random \
              results/LogD_rdkit_random results/LogD_scaffoldkeys_random results/LogD_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_LogD.log 2>&1

astra compare results/LogD_atompair_kmeans results/LogD_avalon_kmeans results/LogD_cats2d_kmeans \
              results/LogD_desc2D_kmeans results/LogD_ecfp_kmeans results/LogD_estate_kmeans \
              results/LogD_fcfp_kmeans results/LogD_maccs_kmeans results/LogD_pmapper_kmeans \
              results/LogD_rdkit_kmeans results/LogD_scaffoldkeys_kmeans results/LogD_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_LogD.log 2>&1

astra compare results/LogD_atompair_butina results/LogD_avalon_butina results/LogD_cats2d_butina \
              results/LogD_desc2D_butina results/LogD_ecfp_butina results/LogD_estate_butina \
              results/LogD_fcfp_butina results/LogD_maccs_butina results/LogD_pmapper_butina \
              results/LogD_rdkit_butina results/LogD_scaffoldkeys_butina results/LogD_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_LogD.log 2>&1

astra compare results/LogD_atompair_bemismurcko results/LogD_avalon_bemismurcko results/LogD_cats2d_bemismurcko \
              results/LogD_desc2D_bemismurcko results/LogD_ecfp_bemismurcko results/LogD_estate_bemismurcko \
              results/LogD_fcfp_bemismurcko results/LogD_maccs_bemismurcko results/LogD_pmapper_bemismurcko \
              results/LogD_rdkit_bemismurcko results/LogD_scaffoldkeys_bemismurcko results/LogD_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_LogD.log 2>&1
