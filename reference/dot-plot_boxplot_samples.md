# (internal) plot boxplot for a given matrix of values

(internal) plot boxplot for a given matrix of values

## Usage

``` r
.plot_boxplot_samples(
  matrix,
  values_col_name,
  metadata,
  color_col = NA,
  outlier = TRUE,
  horizontal = TRUE
)
```

## Arguments

- matrix:

  Sites x Samples C-score/count matrix (output of extract_data()).

- values_col_name:

  Name of the column containing the value (either count or cscore).

- metadata:

  Metadata of samples in matrix.

- color_col:

  Name of the column in the metadata used for coloring samples.

- outlier:

  Show boxplot outlier values.

- horizontal:

  Show boxplot horizontally.

## Value

ggplot boxplot
