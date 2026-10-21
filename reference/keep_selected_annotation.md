# Keep only a subset of the current annotation

Keep only a subset of the current annotation

## Usage

``` r
keep_selected_annotation(ribo, annotation_to_keep)
```

## Arguments

- ribo:

  a RiboClass

- annotation_to_keep:

  vector containing annotated sites'name to keep

## Value

a RiboClass where only annotated sites within annotation_to_keep are
still annotated.

## Examples

``` r
data('ribo_toy')
data('human_methylated')
ribo_toy <- rename_rna(ribo_toy)
ribo_toy <- annotate_site(ribo_toy,human_methylated)
ribo_toy <- keep_selected_annotation(ribo_toy, c("28S_Am1310","28S_Cm2848"))
```
