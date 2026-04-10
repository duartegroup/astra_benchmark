astra compare results/KSOL_atompair_random results/KSOL_avalon_random results/KSOL_cats2d_random \
              results/KSOL_desc2D_random results/KSOL_ecfp_random results/KSOL_estate_random \
              results/KSOL_fcfp_random results/KSOL_maccs_random results/KSOL_pmapper_random \
              results/KSOL_rdkit_random results/KSOL_scaffoldkeys_random results/KSOL_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_KSOL.log 2>&1

astra compare results/KSOL_atompair_kmeans results/KSOL_avalon_kmeans results/KSOL_cats2d_kmeans \
              results/KSOL_desc2D_kmeans results/KSOL_ecfp_kmeans results/KSOL_estate_kmeans \
              results/KSOL_fcfp_kmeans results/KSOL_maccs_kmeans results/KSOL_pmapper_kmeans \
              results/KSOL_rdkit_kmeans results/KSOL_scaffoldkeys_kmeans results/KSOL_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_KSOL.log 2>&1

astra compare results/KSOL_atompair_butina results/KSOL_avalon_butina results/KSOL_cats2d_butina \
              results/KSOL_desc2D_butina results/KSOL_ecfp_butina results/KSOL_estate_butina \
              results/KSOL_fcfp_butina results/KSOL_maccs_butina results/KSOL_pmapper_butina \
              results/KSOL_rdkit_butina results/KSOL_scaffoldkeys_butina results/KSOL_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_KSOL.log 2>&1

astra compare results/KSOL_atompair_bemismurcko results/KSOL_avalon_bemismurcko results/KSOL_cats2d_bemismurcko \
              results/KSOL_desc2D_bemismurcko results/KSOL_ecfp_bemismurcko results/KSOL_estate_bemismurcko \
              results/KSOL_fcfp_bemismurcko results/KSOL_maccs_bemismurcko results/KSOL_pmapper_bemismurcko \
              results/KSOL_rdkit_bemismurcko results/KSOL_scaffoldkeys_bemismurcko results/KSOL_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_KSOL.log 2>&1
