# Package index

## rRMSAnalyzer

- [`rRMSAnalyzer`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/rRMSAnalyzer-package.md)
  [`rRMSAnalyzer-package`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/rRMSAnalyzer-package.md)
  : rRMSAnalyzer package dedicated to analysis of RiboMethSeq data

## Example data

Example data shipped with rRMSAnalyzer.

- [`ribo_toy`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/ribo_toy.md)
  : RiboClass from a toy dataset

## Annotation data

Annotation data shipped with rRMSAnalyzer.

- [`human_methylated`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/human_methylated.md)
  : Known 2'Ome positions in human rRNAs
- [`human_suspected`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/human_suspected.md)
  : Suspected 2'Ome positions in human rRNAs
- [`human_both_methylated_and_suspected`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/human_both_methylated_and_suspected.md)
  : Known and suspected 2'Ome positions in human rRNAs

## RiboClass annotation

Functions to add, remove or keep selected annotation in a RiboClass.

- [`annotate_site()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/annotate_site.md)
  : Annotate sites according to a dataframe containing annotation
- [`get_annotation()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_annotation.md)
  : Get annotation of a RiboClass
- [`remove_annotation()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/remove_annotation.md)
  : Remove site annotations of a given RiboClass
- [`keep_selected_annotation()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/keep_selected_annotation.md)
  : Keep only a subset of the current annotation

## Data importation

Import data to rRMSAnalyzer and generate a RiboClass.

- [`load_ribodata()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/load_ribodata.md)
  : Load csv files from GenomeCov and their associated metadata. Create
  a RiboClass.
- [`new_riboclass()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/new_riboclass.md)
  : Create a RiboClass from count files and metadata.

## C-score computation and adjustment

Annotation data shipped with rRMSAnalyzer.

- [`compute_cscore()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_cscore.md)
  : Compute c-score for all samples in a riboclass
- [`adjust_bias()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/adjust_bias.md)
  : Correct batch effect with ComBat-seq method

## RiboClass customization

Customize an already generated RiboClass, by renaming/removing RNA or
remove a sample.

- [`show_rna_names()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/show_rna_names.md)
  : Display RNA names
- [`rename_rna()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/rename_rna.md)
  : Rename RNAs in a RiboClass object
- [`remove_rna()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/remove_rna.md)
  : Remove one or more RNA among your RiboClass' samples
- [`remove_ribo_samples()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/remove_ribo_samples.md)
  : Remove samples from a Riboclass object
- [`keep_ribo_samples()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/keep_ribo_samples.md)
  : Keep only selected samples from a RiboClass Object.

## Utils

- [`compute_pval()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_pval.md)
  : Compute statistics (p-value for, Welch, Wilcoxon, Kruskal, ANOVA
  test) for C-score based on condition column
- [`get_2ome_summary()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_2ome_summary.md)
  : Create a metric summary table for 2ome_analysis report
- [`get_diff_sites_summary()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_diff_sites_summary.md)
  : Get a summary of statistics for differential 2'ome-sites analysis
- [`get_IQR()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_IQR.md)
  : Compute IQR or variance for 2'Ome sites and return a dataframe
- [`get_outliers()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_outliers.md)
  : Create a outlier summary table (used in plot_heatmap_annotated)
- [`get_variant_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/get_variant_sites.md)
  : Return the most/less variant sites of a dataframe or a RiboClass
- [`render_html_welch()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/render_html_welch.md)
  : Print Welch result in report
- [`render_html_wilcoxon()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/render_html_wilcoxon.md)
  : Print Wilcoxon result in report

## Plots

Different plots to show either samples and sites.

- [`plot_coa()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_coa.md)
  : Correspondence analysis of a RiboClass' counts
- [`plot_comparison_median()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_comparison_median.md)
  : Plot comparison of median of C-score between two conditions
- [`plot_counts_env()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_counts_env.md)
  : Plot counts for a given position on a given RNA
- [`plot_counts_fraction()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_counts_fraction.md)
  : Plot count distribution among RNAs for each sample
- [`plot_diff_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_diff_sites.md)
  : Plot sites showing statistical difference between conditions
- [`plot_global_profile()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_global_profile.md)
  : Plot global profile for given conditions on a given metadata
- [`plot_heatmap()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap.md)
  : Plot heatmap for a riboclass object
- [`plot_heatmap_annotated()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap_annotated.md)
  : Plot a correlation heatmap from a RiboClass object
- [`plot_heatmap_corr()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap_corr.md)
  : Plot a correlation heatmap from a riboclass object Shows the
  correlation distance between samples.
- [`plot_pca()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_pca.md)
  : Principal component analysis of a RiboClass object
- [`plot_rlc()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_rlc.md)
  : Relative Log Expression plot of a RiboClass object’s counts
- [`plot_sites_by_IQR()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_sites_by_IQR.md)
  : Plot sites in increasing/decreasing order of IQR or variance
- [`plot_stat()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_stat.md)
  : Plot statistic of significant differential sites between
  experimental condition returned by the res.pv function
- [`boxplot_count()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/boxplot_count.md)
  : Plot a boxplot of a RiboClass object counts
- [`boxplot_cscores()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/boxplot_cscores.md)
  : Plot boxplot representing the C-score values of all samples for each
  individual annotated site Sites are sorted by their median.

## Export data

Export data

- [`extract_data()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/extract_data.md)
  : Aggregate results into a single matrix
- [`format_to_plot()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/format_to_plot.md)
  : Transform RiboClass data to a "ggplot-friendly" data frame.
- [`mean_samples_by_condition()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/mean_samples_by_condition.md)
  : Regroup samples by condition and calculate mean for each condition

## Reports

Generate automated reports from a RiboClass

- [`report_2ome_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_2ome_sites.md)
  : Generate html report about the analysis of 2’Ome profile
- [`report_diff_sites()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_diff_sites.md)
  : Generate html report about the statistical analysis of difference in
  2’Ome level at each site
- [`report_qc()`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/report_qc.md)
  : Generate html report about possible batch effect for a given
  RiboClass.
