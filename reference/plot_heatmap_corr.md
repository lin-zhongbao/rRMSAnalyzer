# Plot a correlation heatmap from a riboclass object Shows the correlation distance between samples.

Plot a correlation heatmap from a riboclass object

Shows the correlation distance between samples.

## Usage

``` r
plot_heatmap_corr(ribo, values_col, color_col = NULL)
```

## Arguments

- ribo:

  A RiboClass object.

- values_col:

  Name of the column containing the value (either count or cscore).

- color_col:

  Vector of the metadata columns’ name used for coloring samples.

## Value

ComplexHeatmap object

## Examples

``` r
data("ribo_toy")
plot_heatmap_corr(ribo_toy,"count","condition")

```
