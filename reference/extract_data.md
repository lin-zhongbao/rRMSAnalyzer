# Aggregate results into a single matrix

For a given column in data, this function will generate a dataframe with
all samples. Exports all positions (if only_annotated is false) or only
annotated positions (if only_annotated is true).

## Usage

``` r
extract_data(
  ribo,
  col = "cscore",
  position_to_rownames = FALSE,
  only_annotated = FALSE
)
```

## Arguments

- ribo:

  A RiboClass object.

- col:

  Column in data you want extract data from (cscore or count).

- position_to_rownames:

  If true, position will be included as a rowname. They will in a new
  column otherwise.

- only_annotated:

  If true, return a dataframe with only annotated sites. Return all
  sites otherwise.

## Value

A position x samples dataframe. Position can be all or only annotated
sites. A site column can be added if position_to_rownames = FALSE.

## Examples

``` r
data('ribo_toy')
count_df <- extract_data(ribo_toy,'count')
```
