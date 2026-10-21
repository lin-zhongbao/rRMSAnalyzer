# Get a summary of statistics for differential 2'ome-sites analysis

Get a summary of statistics for differential 2'ome-sites analysis

## Usage

``` r
get_diff_sites_summary(
  ribo = ribo,
  pthr = 0.05,
  condition_col = condition_col,
  cscore_cutoff = 0.05,
  comparisons = comparisons
)
```

## Arguments

- ribo:

  a RiboClass

- pthr:

  p-value threshold

- condition_col:

  the condition column used for calculation in metadata

- cscore_cutoff:

  cutoff of c-score under which sites are not taken in account

- comparisons:

  table given by the user

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
comparisons <- tibble::tibble(
                              comp = c("comp1"),
                              ctrl = c("cond1"),
                              cases = c("cond2") )                                
get_diff_sites_summary(ribo = ribo_toy, pthr = 0.05, condition_col = "condition",
 cscore_cutoff = 0.05, comparisons = comparisons)
```
