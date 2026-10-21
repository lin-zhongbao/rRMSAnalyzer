# Plot statistic of significant differential sites between experimental condition returned by the res.pv function

Plot statistic of significant differential sites between experimental
condition returned by the res.pv function

## Usage

``` r
plot_stat(
  ribo = ribo,
  plot_all = FALSE,
  cscore_cutoff = 0.05,
  adjust_pvalues_method = "fdr",
  site = NULL,
  compute_pval = compute_pval,
  pthr = 0.05,
  condition_col = NULL
)
```

## Arguments

- ribo:

  a RiboClass

- plot_all:

  a logical set to FALSE to plot only significants sites and TRUE to
  plot all sites

- cscore_cutoff:

  cutoff of c-score under which sites are not taken in account

- adjust_pvalues_method:

  Method to adjust p-value

- site:

  sites to plot

- compute_pval:

  df of p values extracted from compute_pval.R

- pthr:

  p value threshold under which sites are not taken in account

- condition_col:

  the condition column used for calculation in metadata

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
compute_pval <- compute_pval(ribo = ribo_toy, test = "kruskal", condition_col = "condition") 
plot_stat(ribo = ribo_toy, site = NULL, compute_pval = compute_pval, pthr = 0.05, 
condition_col = "condition", cscore_cutoff = 0.05)
#> Warning: filter on p_adj
```
