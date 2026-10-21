# Return the range between conditions' mean

Return the range between conditions' mean

## Usage

``` r
get_range(cscore_matrix = NULL, metadata = NULL, factor_column = NULL)
```

## Arguments

- cscore_matrix:

  Sites x Samples C-score matrix (output of extract_data()).

- metadata:

  Metadata associated to samples c-score matrix.

- factor_column:

  Metadata column used to group samples by.

## Value

a dataframe with 1) annotated site name 2) range of mean between
conditions for this site.
