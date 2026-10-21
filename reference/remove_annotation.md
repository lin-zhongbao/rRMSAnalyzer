# Remove site annotations of a given RiboClass

Remove site annotations of a given RiboClass

## Usage

``` r
remove_annotation(ribo, annotation_to_remove = NULL)
```

## Arguments

- ribo:

  A RiboClass object.

- annotation_to_remove:

  Specific annotated sites to remove. If set to NULL, the function
  removes all annotations.

## Value

A RiboClass object where all annotated position have been replaced by
NA, the default value.

## Examples

``` r
data('ribo_toy')
remove_annotation(ribo_toy)
#> a RiboClass with 14 samples and 4 RNA(s) :
#> Name : NR_023363.1_5S, length : 121
#>  Name : NR_046235.3_5.8S, length : 157
#>  Name : NR_046235.3_18S, length : 1869
#>  Name : NR_046235.3_28S, length : 5070
```
