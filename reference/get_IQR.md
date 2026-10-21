# Compute IQR or variance for 2'Ome sites and return a dataframe

Compute IQR or variance for 2'Ome sites and return a dataframe

## Usage

``` r
get_IQR(df = NULL, order = "IQR")
```

## Arguments

- df:

  a dataframe

- order:

  the type of variance to be computed. Should be var or iqr.

## Value

a ggplot data frame with Cscore, Site, IQR or var value and sample ID

## Examples

``` r
data("ribo_toy")
ribo_matrix <- extract_data(ribo_toy,position_to_rownames = TRUE)
ribo_matrix <- na.omit(ribo_matrix)
IQR_df <- get_IQR(ribo_matrix)
```
