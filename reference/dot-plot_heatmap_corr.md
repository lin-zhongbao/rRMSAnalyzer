# Internal function of plot_heatmap_corr

Internal function of plot_heatmap_corr

## Usage

``` r
.plot_heatmap_corr(cscore_matrix, metadata, color_col)
```

## Arguments

- cscore_matrix:

  Sites x Samples C-score matrix (output of extract_data()).

- metadata:

  Metadata of samples in matrix

- color_col:

  Vector of the metadata columns’ name used for coloring samples.

## Value

ComplexHeatmap heatmap
