astra compare results/HLM_atompair_random results/HLM_avalon_random results/HLM_cats2d_random \
              results/HLM_desc2D_random results/HLM_ecfp_random results/HLM_estate_random \
              results/HLM_fcfp_random results/HLM_maccs_random results/HLM_pmapper_random \
              results/HLM_rdkit_random results/HLM_scaffoldkeys_random results/HLM_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_HLM.log 2>&1

astra compare results/HLM_atompair_kmeans results/HLM_avalon_kmeans results/HLM_cats2d_kmeans \
              results/HLM_desc2D_kmeans results/HLM_ecfp_kmeans results/HLM_estate_kmeans \
              results/HLM_fcfp_kmeans results/HLM_maccs_kmeans results/HLM_pmapper_kmeans \
              results/HLM_rdkit_kmeans results/HLM_scaffoldkeys_kmeans results/HLM_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_HLM.log 2>&1

astra compare results/HLM_atompair_butina results/HLM_avalon_butina results/HLM_cats2d_butina \
              results/HLM_desc2D_butina results/HLM_ecfp_butina results/HLM_estate_butina \
              results/HLM_fcfp_butina results/HLM_maccs_butina results/HLM_pmapper_butina \
              results/HLM_rdkit_butina results/HLM_scaffoldkeys_butina results/HLM_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_HLM.log 2>&1

astra compare results/HLM_atompair_bemismurcko results/HLM_avalon_bemismurcko results/HLM_cats2d_bemismurcko \
              results/HLM_desc2D_bemismurcko results/HLM_ecfp_bemismurcko results/HLM_estate_bemismurcko \
              results/HLM_fcfp_bemismurcko results/HLM_maccs_bemismurcko results/HLM_pmapper_bemismurcko \
              results/HLM_rdkit_bemismurcko results/HLM_scaffoldkeys_bemismurcko results/HLM_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_HLM.log 2>&1
