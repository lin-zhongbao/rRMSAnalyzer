# Plot a boxplot of a RiboClass object counts

This plot is useful to check if the samples are alike in their raw
counts.

## Usage

``` r
boxplot_count(ribo, color_col = NA, outlier = TRUE, horizontal = FALSE)
```

## Arguments

- ribo:

  A RiboClass object.

- color_col:

  Name of the column in the metadata used for coloring samples.

- outlier:

  Show boxplot outlier values.

- horizontal:

  Show boxplot horizontally.

## Value

A ggplot object.

## Examples

``` r
data("ribo_toy")
boxplot_count(ribo_toy,"run")
#> Warning: Removed 499 rows containing non-finite outside the scale range
#> (`stat_boxplot()`).
#> Warning: Removed 499 rows containing non-finite outside the scale range
#> (`stat_boxplot()`).
```
