# Regroup samples by condition and calculate mean for each condition

An helper function that will give the mean by condition of the cscore or
count, for each position. The standard deviation is also given. this can
be used to create a boxplot with ggplot.

## Usage

``` r
mean_samples_by_condition(
  ribo,
  value,
  metadata_condition,
  only_annotated = FALSE
)
```

## Arguments

- ribo:

  a RiboClass object

- value:

  name or index of the column containing the values on which mean by
  condition is calculated. (Either "cscore" or "count")

- metadata_condition:

  name or index of the column **in metadata** containing the condition

- only_annotated:

  use annotation site name instead of default

## Value

a dataframe with the mean for each condition for a selected value

## Examples

``` r
data("ribo_toy")
mean_df <- mean_samples_by_condition(ribo_toy,"count","condition")
```
