# Changelog

## rRMSAnalyzer 3.0.0

### New features

#### Plots

- [`compute_pval()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_pval.md):
  Compute statistics for C-score based on condition column
- [`plot_comparison_median()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_comparison_median.md):
  Gives comparison of median C-scores between biological conditions
- [`plot_global_profile()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_global_profile.md):
  Gives a line plot of 2’Ome profile per conditions
- [`plot_sites_by_IQR()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_sites_by_IQR.md):
  Gives IQR or variance per site
- [`plot_stat()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_stat.md):
  Gives significant differential sites between experimental conditions

#### Others

- [`report_diff_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_diff_sites.md)
  : Statistical analysis report of differential 2’O-methylation sites
  across experimental conditions.

### Breaking change

- `heatmap_annotated()`: Addition of outliers annotation
- [`plot_counts_fraction()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_counts_fraction.md):
  Addition of human theoretical fraction threshold
- [`report_2ome_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_2ome_sites.md):
  Addition of (i) variant site threshold computation, (ii) variation
  summary, (iii) conclusion part
- [`report_qc()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_qc.md):
  Addition of (i) summary tables of outliers and (ii) conclusion part

## rRMSAnalyzer 2.0.1

### New feature

- [`get_annotation()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_annotation.md):
  get a dataframe with all current annotation in a RiboClass.

- [`remove_annotation()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/remove_annotation.md):
  Added a new parameter to select a subset of annotation to remove.

## rRMSAnalyzer 2.0.0

- Added a `NEWS.md` file to track changes to the package.

### Breaking change

- `plot_PCA()`has been renamed to
  [`plot_pca()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_pca.md).

### New features

#### Plots

- Correspondence analysis for samples’ counts :
  [`plot_coa()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_coa.md)
- Heatmaps:
  [`plot_heatmap()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap.md)
  and
  [`plot_heatmap_corr()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap_corr.md)
- “Simple” boxplots :
  [`boxplot_count()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/boxplot_count.md)
  (by sample) and
  [`boxplot_cscores()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/boxplot_cscores.md)
  (by site)
- Boxplot comparing c-score by condition for sites considered as
  differential
  [`plot_diff_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_diff_sites.md)
- And others:
  [`plot_counts_env()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_counts_env.md),
  [`plot_counts_fraction()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_counts_fraction.md)…

#### Error messages

- Error messages are now using Cli package for better clarity

- More error messages to help the users

### Bugfixes & improvements

- [`compute_cscore()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_cscore.md)
  has drastically been improved in terms of performance

## rRMSAnalyzer 1.0.0

First public version of rRMSAnalyzer 🥳 !

### New features

Only main features will be shown here :

- C-score computation for all positions
  ([`compute_cscore()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_cscore.md))

- Technical biases adjustment with CombatSeq
  ([`adjust_bias()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/adjust_bias.md))

- Principal Component Analysis (`plot_PCA()`)
