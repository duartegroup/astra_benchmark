# Repository for benchmarking ASTRA

This repository contains the code for benchmarking [ASTRA](https://github.com/duartegroup/astra).

# Setup

```bash
conda env create -f env.yml
conda activate astra_benchmark
git clone https://github.com/duartegroup/astra.git
cd astra
pip install ./
```

# Benchmark on synthetic data

Generate and split synthetic datasets:

```bash
python get_synthetic_data.py
```

Train models (either locally or submit to a cluster):

```bash
bash benchmark_classifiers.sh
bash benchmark_regressors.sh
```

Collect the results:

```bash
python collect_results_syn.py
```

We analysed the results in [this notebook](analysis.ipynb).

# Benchmark on ASAP Discovery x OpenADMET Challenge

## Download benchmark dataset

To download and pre-process the benchmark dataset, run:

```bash
conda create -n polaris polaris=0.11 numcodecs=0.15 -c conda-forge
conda activate polaris
polaris login
python get_benchmark_data.py
```

Note that this requires logging in to the Polaris platform. We provide the processed dataset [here](processed_data/).

## Featurise and split dataset

To featurise and split the dataset, run:

```bash
conda activate astra_benchmark
python featurise_and_split.py
python process_test_feats.py
```

We provide the final, pickled, ASTRA-ready datasets [here](features/).

## Train and compare models using ASTRA

Train models (either locally or submit to a cluster):

```bash
bash benchmark_models_HLM.sh
bash benchmark_models_KSOL.sh
bash benchmark_models_LogD.sh
bash benchmark_models_MDR1_MDCKII.sh
bash benchmark_models_MLM.sh
bash benchmark_models_MERS.sh
bash benchmark_models_SARS.sh
```

Compare models:

```bash
bash compare_results_HLM.sh
bash compare_results_KSOL.sh
bash compare_results_LogD.sh
bash compare_results_MDR1_MDCKII.sh
bash compare_results_MLM.sh
bash compare_results_MERS.sh
bash compare_results_SARS.sh
```

## Analyse results

We analysed the results in [this notebook](analysis.ipynb). Collecting the results for benchmarking `astra benchmark` is done in a separate script, as that requires training and evaluating all regression models implemented in `astra`:

```bash
python collect_results_asap.py
```

`astra compare` provides trained models, so collecting the results for benchmarking `astra compare` is done in the analysis noteboook.
