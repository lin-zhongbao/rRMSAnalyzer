# Internal function to plot heatmap

Internal function to plot heatmap

## Usage

``` r
.plot_heatmap(
  cscore_matrix = NULL,
  metadata = NULL,
  color_col = NULL,
  most_variant = FALSE,
  title = "default",
  cutree_rows,
  cutree_cols,
  ...
)
```

## Arguments

- cscore_matrix:

  Sites x Samples C-score matrix (output of extract_data()).

- metadata:

  metadata for samples in cscore_matrix

- color_col:

  Vector of the metadata columns’ name used for coloring samples.

- most_variant:

  select only the most variant positions (cannot be used from
  plot_heatmap())

- title:

  Title to display on the plot. "default" for default title.

- cutree_rows:

  number of clusters the rows are divided into, based on the
  hierarchical clustering (using cutree).

- cutree_cols:

  number of clusters the columns are divided into, based on the
  hierarchical clustering (using cutree).

- ...:

  Pheatmap’s parameters

## Value

ComplexHeatmap heatmap
