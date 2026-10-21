# Plot global profile for given conditions on a given metadata

Plot global profile for given conditions on a given metadata

## Usage

``` r
plot_global_profile(ribo = ribo_adj_annot, condition_col = NULL)
```

## Arguments

- ribo:

  A RiboClass object.

- condition_col:

  condition column for the plot

## Value

a ggplot object

## Examples

``` r
data("ribo_toy")
data("human_methylated")
ribo_toy <- remove_ribo_samples(ribo_toy,c("RNA1", "RNA2"))
ribo_toy <- rename_rna(ribo_toy)  
ribo_toy <- annotate_site(ribo_toy,
                                annot = human_methylated,
                                anno_rna = "rRNA",
                                anno_pos = "Position",
                                anno_value = "Nomenclature")
plot_global_profile(ribo_toy, "condition")
#> Warning: Removed 3 rows containing missing values or values outside the scale range
#> (`geom_ribbon()`).
```
