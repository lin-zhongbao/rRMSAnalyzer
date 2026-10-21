# Create a metric summary table for 2ome_analysis report

Create a metric summary table for 2ome_analysis report

## Usage

``` r
get_2ome_summary(ribo = ribo)
```

## Arguments

- ribo:

  a RiboClass object

## Value

a data frame

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
get_2ome_summary(ribo = ribo_toy)
```
