# Plot comparison of median of C-score between two conditions

Plot comparison of median of C-score between two conditions

## Usage

``` r
plot_comparison_median(
  ribo = NULL,
  condition_col = NULL,
  ech = NULL,
  ctrl = NULL
)
```

## Arguments

- ribo:

  A RiboClass object.

- condition_col:

  condition column for the plot

- ech:

  modality 1 of condition_col

- ctrl:

  modality 2 of condition_col

## Value

two ggplot objects

## Examples

``` r
data("ribo_toy")
ech <- "cond1"
ctrl <- "cond2"
plot_comparison_median(ribo_toy, "condition", ech, ctrl)
#> Warning: No shared levels found between `names(values)` of the manual scale and the
#> data's fill values.
#> Warning: No shared levels found between `names(values)` of the manual scale and the
#> data's colour values.
```
