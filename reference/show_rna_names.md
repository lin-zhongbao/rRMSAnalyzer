# Display RNA names

Display RNA names

## Usage

``` r
show_rna_names(ribo = NULL)
```

## Arguments

- ribo:

  a RiboClass object

## Value

A vector with actual RNA names

## Examples

``` r
data("ribo_toy")
show_rna_names(ribo = ribo_toy)
#> [1] NR_023363.1_5S   NR_046235.3_5.8S NR_046235.3_18S  NR_046235.3_28S 
#> Levels: NR_023363.1_5S NR_046235.3_5.8S NR_046235.3_18S NR_046235.3_28S
```
