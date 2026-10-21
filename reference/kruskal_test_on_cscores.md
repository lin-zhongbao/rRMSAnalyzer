# Kruskal test on c-scores

Kruskal test on c-scores

## Usage

``` r
kruskal_test_on_cscores(
  cscore_matrix = NULL,
  metadata = NULL,
  adjust_pvalues_method = "fdr",
  factor_column = NULL
)
```

## Arguments

- cscore_matrix:

  Sites x Samples C-score matrix (output of extract_data()).

- metadata:

  Metadata associated to samples c-score matrix.

- adjust_pvalues_method:

  Method to adjust p-value, one of p.adjust.methods.

- factor_column:

  Metadata column used to group samples by.

## Value

A dataframe with three columns : 1) site : RNA site, 2) p.val : raw
p-values, 3) adjusted p-values.
