# Customizing a RiboClass

``` r

library(rRMSAnalyzer)
data("ribo_toy")
```

rRMSAnalyzer has a set of functions dedicated to modify a previously
loaded RiboClass, both for samples and RNAs.

In this article, you will find common ways to use them.

## Functions to modify RNAs

### Remove RNA

A RNA subset can be easily analyzed by indicating the RNA to remove. The
user can thus create a new RiboClass object containing the data of the
RNAs of interest, without affecting the samples’ metadata.

Here is an example where the RNA 5S is removed:

``` r

ribo_adjusted <- remove_rna(ribo_toy, rna_to_remove = "NR_023363.1_5S")
print(ribo_adjusted)
#> a RiboClass with 14 samples and 3 RNA(s) :
#> Name : NR_046235.3_5.8S, length : 157
#>  Name : NR_046235.3_18S, length : 1869
#>  Name : NR_046235.3_28S, length : 5070
```

### Rename RNA

It is always better to have readable RNA names on plots. This section is
very important for annotation of rRNA 2’Ome sites using an annotation
dataframe. You RiboClass must shares the same RNA names with the latter.

Here is an example to check whether the RNA names provided by the user
in the RiboClass match the ones used by this package :

``` r

data("human_methylated")
cat("human_methylated's rna names: ", unique(human_methylated$rRNA),"\n")
#> human_methylated's rna names:  5.8S 18S 28S
cat("ribo_toy's rna names: ", as.character(ribo_adjusted$rna_names$current_name))
#> ribo_toy's rna names:  NR_046235.3_5.8S NR_046235.3_18S NR_046235.3_28S
```

In this example, the names are different and need to be updated before
annotation.

The function rename_rna updates automatically the rRNA names that are
given by rRNA size order:

``` r

ribo_adjusted <- rename_rna(ribo_adjusted,
                            new_names = c("5.8S", "18S", "28S")) 
                            # from the shortest RNA in our RiboClass to the longest.
```

## Functions to modify samples

### Keep only a set samples

A sample subset can be easily analyzed by indicating the samples to
keep. The user can thus create a new RiboClass object containing the
data and metadata of the samples of interest. Only the remaining
samples’ metadata are kept in the RiboClass object, so no manual
updating is required.

Here is an example to generate a new RiboClass by keeping two samples of
interest (“S1” and “S2”):

``` r

ribo_2samples <- keep_ribo_samples(ribo_adjusted,c("S1","S2"))
print(ribo_2samples)
#> a RiboClass with 2 samples and 3 RNA(s) :
#> Name : 5.8S, length : 157
#>  Name : 18S, length : 1869
#>  Name : 28S, length : 5070
```

### Remove samples

Unlike the previous section, samples indicated here will be removed from
the RiboClass. The metadata will be updated accordingly.

Here is an example to generate a new RiboClass by removing two samples
(“S1” and “S2”):

``` r

ribo_removed_samples <- remove_ribo_samples(ribo_toy,c("S1","S1"))
print(ribo_removed_samples)
#> a RiboClass with 13 samples and 4 RNA(s) :
#> Name : NR_023363.1_5S, length : 121
#>  Name : NR_046235.3_5.8S, length : 157
#>  Name : NR_046235.3_18S, length : 1869
#>  Name : NR_046235.3_28S, length : 5070
```

## Session info

``` r

sessionInfo()
#> R version 4.6.1 (2026-06-24)
#> Platform: x86_64-pc-linux-gnu
#> Running under: Ubuntu 24.04.5 LTS
#> 
#> Matrix products: default
#> BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
#> LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.26.so;  LAPACK version 3.12.0
#> 
#> locale:
#>  [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8       
#>  [4] LC_COLLATE=C.UTF-8     LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
#>  [7] LC_PAPER=C.UTF-8       LC_NAME=C              LC_ADDRESS=C          
#> [10] LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   
#> 
#> time zone: UTC
#> tzcode source: system (glibc)
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#> [1] rRMSAnalyzer_3.0.0
#> 
#> loaded via a namespace (and not attached):
#>  [1] vctrs_0.7.3        cli_3.6.6          knitr_1.52         rlang_1.3.0       
#>  [5] xfun_0.62          otel_0.2.0         generics_0.1.4     S7_0.2.2          
#>  [9] textshaping_1.0.5  jsonlite_2.0.0     glue_1.8.1         htmltools_0.5.9   
#> [13] ragg_1.5.2         sass_0.4.10        scales_1.4.0       rmarkdown_2.32    
#> [17] grid_4.6.1         tibble_3.3.1       evaluate_1.0.5     jquerylib_0.1.4   
#> [21] fastmap_1.2.0      yaml_2.3.12        lifecycle_1.0.5    compiler_4.6.1    
#> [25] dplyr_1.2.1        RColorBrewer_1.1-3 fs_2.1.0           pkgconfig_2.0.3   
#> [29] htmlwidgets_1.6.4  farver_2.1.2       systemfonts_1.3.2  digest_0.6.39     
#> [33] R6_2.6.1           tidyselect_1.2.1   pillar_1.11.1      magrittr_2.0.5    
#> [37] bslib_0.12.0       tools_4.6.1        gtable_0.3.6       pkgdown_2.2.1     
#> [41] ggplot2_4.0.3      cachem_1.1.0       desc_1.4.3
```
