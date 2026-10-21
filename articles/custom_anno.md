# Create and use custom sites annotation

Sites annotation is a way to mark sites of interest with a custom name.
These annotated sites can be then plotted and analysed separately when
the function has a only_annotated parameter.

## A good annotation dataframe

A good annotation dataframe must have the following columns :

- Position : position of the site **on the RNA**
- RNA : name of the RNA where the site of interest is located
- Nomenclature : Custom name for your site of interest

Here is an example :

| Position | rRNA | Nomenclature |
|----------|------|--------------|
| 15       | 5.8S | Um14         |
| 76       | 5.8S | Gm75         |
| 28       | 18S  | Am27         |

(The columns ordering is not that important, but not respecting it will
require extra arguments for the function call in next section)

You are free to add other columns, as they will be ignored by
rRMSAnalyzer.

## Annotate sites with your custom dataframe

First, check if your RNAs inside your RiboClass have the same name as
your RNAs in your annotation dataframe.

If not, you can use `rename_rna` to change the names inside the
RiboClass or modify your annotation dataframe.

When this is done. You can use annotate_site :

``` r

# In this example, ribo is the RiboClass we want to annotate
ribo <- annotate_site(ribo,MyAnnotationDataframe)

# If columns are not in the same order as the example table,
# each column index or name must be precised then.

ribo <- annotate_site(ribo,
                      MyAnnotationDataframe,
                      anno_rna = 3,
                      anno_pos = 2,
                      anno_value = 1)
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
#> loaded via a namespace (and not attached):
#>  [1] digest_0.6.39     desc_1.4.3        R6_2.6.1          fastmap_1.2.0    
#>  [5] xfun_0.62         cachem_1.1.0      knitr_1.52        htmltools_0.5.9  
#>  [9] rmarkdown_2.32    lifecycle_1.0.5   cli_3.6.6         sass_0.4.10      
#> [13] pkgdown_2.2.1     textshaping_1.0.5 jquerylib_0.1.4   systemfonts_1.3.2
#> [17] compiler_4.6.1    tools_4.6.1       ragg_1.5.2        bslib_0.12.0     
#> [21] evaluate_1.0.5    yaml_2.3.12       otel_0.2.0        jsonlite_2.0.0   
#> [25] rlang_1.3.0       fs_2.1.0          htmlwidgets_1.6.4
```
