# (internal) Test which sites are the most variable between conditions

This function outputs the same result as plot_diff_sites, but as a
dataframe. It cannot be called directly, use "only_df = TRUE" in
plot_diff_sites instead.

## Usage

``` r
wrapper_kruskal_test(
  ribo = NULL,
  adjust_pvalues_method = "fdr",
  factor_column = NULL
)
```

## Arguments

- ribo:

  a RiboClass

- adjust_pvalues_method:

  p-value adjustment method (default : "fdr")

- factor_column:

  Metadata column used to group samples by.

## Value

A dataframe where each site is a row and with the following column : 1)
site : name of the site; 2) p.val : raw p-value; 3) p.adj : adjusted
p-value 4) mean_max_min_difference : range between conditions of mean
c-score

## Details

To be considered as differential, a site must follow two conditions :

- Have a significant p-value on a Kruskal-wallis test on c-score between
  conditions.

- Have a C-score range between conditions (max median - min mea) above a
  certain cutoff.

Both the p-value cutoff and c-score range cutoff can be changed with
p_cutoff and cscore_cutoff parameters respectively.
