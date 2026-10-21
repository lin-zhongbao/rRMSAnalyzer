# rRMSAnalyzer package dedicated to analysis of RiboMethSeq data

The rRMSAnalyzer package is designed to give easy-to-use functions
dedicated to RiboMethSeq (RMS) analyses. All functions revolve around
the RiboClass, a S3 class containing both RMS data and samples metadata.

## Details

The main functions are (in a standard workflow chronological order):

- [`load_ribodata`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/load_ribodata.md) -
  import data and create a RiboClass. Objects of this class are used by
  all other functions

- [`compute_cscore`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_cscore.md) -
  compute C-score for all genomic positions in each sample

- [`adjust_bias`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/adjust_bias.md) -
  adjust technical biases of your RiboMethSeq data with ComBat-seq

- [`extract_data`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/extract_data.md) -
  get a dataframe of C-score for all samples and all positions in the
  RiboClass

- Plots, e.g.:
  [`plot_pca`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_pca.md);
  [`plot_coa`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_coa.md)
  or
  [`plot_heatmap`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/plot_heatmap.md).

To know how to start using this package, have a look at the vignette at
[`vignette("rRMSAnalyzer")`](https://ribosomecrcl.github.io/rRMSAnalyzer/articles/rRMSAnalyzer.md).
It will give an example for most commands and a workflow.

The code can be viewed at the GitHub repository :

<https://github.com/RibosomeCRCL/rRMSAnalyzer>

## See also

Useful links:

- <https://github.com/RibosomeCRCL/rRMSAnalyzer>

- <https://ribosomecrcl.github.io/rRMSAnalyzer/>

- Report bugs at <https://github.com/RibosomeCRCL/rRMSAnalyzer/issues>

## Author

Théo COMBE, Hermes PARAQINDES, Allyson MOUREAUX, Janice KIELBASSA
