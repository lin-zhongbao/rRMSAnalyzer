# Remove one or more RNA among your RiboClass' samples

Remove one or more RNA among your RiboClass' samples

## Usage

``` r
remove_rna(ribo, rna_to_remove)
```

## Arguments

- ribo:

  A RiboClass object.

- rna_to_remove:

  One RNA name or a vector of RNA names.

## Value

A RiboClass with the RNA(s) removed in data and rna_names sections.

## Examples

``` r
data("ribo_toy")
ribo_toy <- remove_rna(ribo_toy, "NR_023363.1_5S")
```
