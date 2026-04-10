astra compare results/MDR1_MDCKII_atompair_random results/MDR1_MDCKII_avalon_random results/MDR1_MDCKII_cats2d_random \
              results/MDR1_MDCKII_desc2D_random results/MDR1_MDCKII_ecfp_random results/MDR1_MDCKII_estate_random \
              results/MDR1_MDCKII_fcfp_random results/MDR1_MDCKII_maccs_random results/MDR1_MDCKII_pmapper_random \
              results/MDR1_MDCKII_rdkit_random results/MDR1_MDCKII_scaffoldkeys_random results/MDR1_MDCKII_topological_random \
              --main_metric MSE --sec_metrics R2 MAE > results/compare_results_MDR1_MDCKII.log 2>&1

astra compare results/MDR1_MDCKII_atompair_kmeans results/MDR1_MDCKII_avalon_kmeans results/MDR1_MDCKII_cats2d_kmeans \
              results/MDR1_MDCKII_desc2D_kmeans results/MDR1_MDCKII_ecfp_kmeans results/MDR1_MDCKII_estate_kmeans \
              results/MDR1_MDCKII_fcfp_kmeans results/MDR1_MDCKII_maccs_kmeans results/MDR1_MDCKII_pmapper_kmeans \
              results/MDR1_MDCKII_rdkit_kmeans results/MDR1_MDCKII_scaffoldkeys_kmeans results/MDR1_MDCKII_topological_kmeans \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MDR1_MDCKII.log 2>&1

astra compare results/MDR1_MDCKII_atompair_butina results/MDR1_MDCKII_avalon_butina results/MDR1_MDCKII_cats2d_butina \
              results/MDR1_MDCKII_desc2D_butina results/MDR1_MDCKII_ecfp_butina results/MDR1_MDCKII_estate_butina \
              results/MDR1_MDCKII_fcfp_butina results/MDR1_MDCKII_maccs_butina results/MDR1_MDCKII_pmapper_butina \
              results/MDR1_MDCKII_rdkit_butina results/MDR1_MDCKII_scaffoldkeys_butina results/MDR1_MDCKII_topological_butina \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MDR1_MDCKII.log 2>&1

astra compare results/MDR1_MDCKII_atompair_bemismurcko results/MDR1_MDCKII_avalon_bemismurcko results/MDR1_MDCKII_cats2d_bemismurcko \
              results/MDR1_MDCKII_desc2D_bemismurcko results/MDR1_MDCKII_ecfp_bemismurcko results/MDR1_MDCKII_estate_bemismurcko \
              results/MDR1_MDCKII_fcfp_bemismurcko results/MDR1_MDCKII_maccs_bemismurcko results/MDR1_MDCKII_pmapper_bemismurcko \
              results/MDR1_MDCKII_rdkit_bemismurcko results/MDR1_MDCKII_scaffoldkeys_bemismurcko results/MDR1_MDCKII_topological_bemismurcko \
              --main_metric MSE --sec_metrics R2 MAE >> results/compare_results_MDR1_MDCKII.log 2>&1
