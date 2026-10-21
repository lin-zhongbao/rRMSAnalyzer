# (Internal) Display differential sites

Using dataframes obtained from

## Usage

``` r
plot_most_differential_sites(
  df_of_Cscores = NULL,
  df_of_kruskal = NULL,
  most_differential_sites = NULL
)
```

## Arguments

- df_of_Cscores:

  Dataframe of positions x samples for c-score. Output of
  extract_data().

- df_of_kruskal:

  Output of kruskal_test_on_cscores()

- most_differential_sites:

  A list of most differential sites. Output of
  select_most_differential_sites function.

## Value

a ggplot object
