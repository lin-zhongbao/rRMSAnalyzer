# Rename RNAs in a RiboClass object

Rename RNAs in a RiboClass object

## Usage

``` r
rename_rna(ribo, new_names = c("5S", "5.8S", "18S", "28S"))
```

## Arguments

- ribo:

  A RiboClass object.

- new_names:

  Vector of new RNA names (by RNA size order).

## Value

a RiboClass with updated RNA names in both data and rna_names sections.

## Examples

``` r
data("ribo_toy")
ribo_toy <- rename_rna(ribo_toy ,c("5S","5.8S","18S","28S"))
```
