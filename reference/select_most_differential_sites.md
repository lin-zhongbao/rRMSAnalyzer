# Return a list of differential sites

Return a list of differential sites

## Usage

``` r
select_most_differential_sites(
  df_of_kruskal = NULL,
  p_cutoff = 0.01,
  cscore_cutoff = 0.05
)
```

## Arguments

- df_of_kruskal:

  Output of kruskal_test_on_cscores().

- p_cutoff:

  Cutoff below which the kruskal-wallis test is considered significant
  for a given site.

- cscore_cutoff:

  Cutoff above which the max-min c-score range between conditions' mean
  is considered significant.

## Value

a vector of sites that are differentials

## Details

To be considered as differential, a site must follow two conditions :

- Have a significant p-value on a Kruskal-wallis test on c-score between
  conditions.

- Have a C-score range between conditions (max median - min mea) above a
  certain cutoff.

Both the p-value cutoff and c-score range cutoff can be changed with
p_cutoff and cscore_cutoff parameters respectively.
