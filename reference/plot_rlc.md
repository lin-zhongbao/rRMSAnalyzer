# Relative Log Expression plot of a RiboClass object’s counts

Relative Log Expression plot of a RiboClass object’s counts

## Usage

``` r
plot_rlc(ribo, show_outlier = TRUE)
```

## Arguments

- ribo:

  a RiboClass object.

- show_outlier:

  Show boxplot outlier values.

## Value

A ggplot object. Samples with a median lower than median(RLC
counts)-2\*MAD (Median Absolute Deviation) are colored in red.

## Examples

``` r
data("ribo_toy")
plot_rlc(ribo_toy)
```
