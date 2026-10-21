# Generate html report about the statistical analysis of difference in 2’Ome level at each site

Generate html report about the statistical analysis of difference in
2’Ome level at each site

## Usage

``` r
report_diff_sites(
  ribo,
  specie = "not specified",
  ribo_name,
  rmdfile,
  condition_col,
  library_col,
  project_name = "Unnamed project",
  output_dir = getwd(),
  comparisons = NULL,
  comments = NULL
)
```

## Arguments

- ribo:

  a RiboClass object.

- specie:

  studied specie of the project

- ribo_name:

  name of RiboClass

- rmdfile:

  filename of the Rmarkdown template to use.

- condition_col:

  name or index of the column \_\_in metadata\_\_ containing the
  condition

- library_col:

  name or index of the column \_\_in metadata\_\_ containing the library

- project_name:

  Name of the project to display on the report

- output_dir:

  Path of output directory

- comparisons:

  data.frame or tibble with columns 'ctrl' and 'cases', defining the
  pairwise comparisons to run.

- comments:

  Path to a text file containing comments

## Examples

``` r
library(dplyr)
#> 
#> Attaching package: ‘dplyr’
#> The following object is masked from ‘package:kableExtra’:
#> 
#>     group_rows
#> The following objects are masked from ‘package:stats’:
#> 
#>     filter, lag
#> The following objects are masked from ‘package:base’:
#> 
#>     intersect, setdiff, setequal, union
data('ribo_toy')
data("human_methylated")
ribo_adj_small <- remove_ribo_samples(ribo_toy, c("RNA1","RNA2"))
ribo_adj_small_name <- rename_rna(ribo_adj_small, 
new_names = c("5S", "5.8S", "18S", "28S"))
ribo_adj_annot <- annotate_site(ribo_adj_small_name, 
                                annot = human_methylated,
                                anno_rna = "rRNA",
                               anno_pos = "Position",
                               anno_value = "Nomenclature")
comparisons <- tibble::tibble(
comp = c("comp1"),
ctrl = c("cond1"),
cases = c("cond2"))
kept_samples <- ribo_adj_annot$metadata %>% 
  dplyr::filter(!is.na(comp1)) %>% 
  dplyr::pull(samplename)
ribo_adj_annot_comp1 <- keep_ribo_samples(ribo_adj_annot, kept_samples)
report_diff_sites(ribo = ribo_adj_annot_comp1, specie = "human", 
condition_col = "comp1", project_name = "name", comparisons = comparisons, 
comments = "./comment_diff_site.Rmd") 
#> 
#> 
#> processing file: diff_sites.Rmd
#> 1/47                       
#> 2/47 [unnamed-chunk-1]     
#> 3/47                       
#> 4/47 [labrary]             
#> 5/47                       
#> 6/47 [unnamed-chunk-2]     
#> 7/47                       
#> 8/47 [prepare tables]      
#> 9/47                       
#> 10/47 [print metadata table]
#> 11/47                       
#> 12/47 [premiere table]      
#> 13/47                       
#> 14/47 [unnamed-chunk-3]     
#> 15/47                       
#> 16/47 [unnamed-chunk-4]     
#> 17/47                       
#> 18/47 [unnamed-chunk-5]     
#> 19/47                       
#> 20/47 [unnamed-chunk-6]     
#> 21/47                       
#> 22/47 [anova]               
#> 23/47                       
#> 24/47 [plot sites]          
#> 25/47                       
#> 26/47 [explain anova]       
#> 27/47                       
#> 28/47 [anova test]          
#> 29/47                       
#> 30/47 [welch test render]   
#> 31/47                       
#> 32/47 [kruskal]             
#> 33/47                       
#> 34/47 [plot sites kruskal]  
#> 35/47                       
#> 36/47 [explain kruskal]     
#> 37/47                       
#> 38/47 [kruskal test]        
#> 39/47                       
#> 40/47 [wilcoxon test render]
#> 41/47                       
#> 42/47 [unnamed-chunk-7]     
#> 43/47                       
#> 44/47 [print comment]       
#> 45/47                       
#> 46/47 [unnamed-chunk-8]     
#> 47/47                       
#> output file: diff_sites.knit.md
#> /opt/hostedtoolcache/pandoc/3.8.3/x64/pandoc +RTS -K512m -RTS diff_sites.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /home/runner/work/rRMSAnalyzer/rRMSAnalyzer/docs/reference/diff_sites.html --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/latex-div.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/table-classes.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --table-of-contents --toc-depth 3 --variable toc_float=1 --variable toc_selectors=h1,h2,h3 --variable toc_smooth_scroll=1 --variable toc_print=1 --template /home/runner/work/_temp/Library/rmarkdown/rmd/h/default.html --syntax-highlighting none --variable highlightjs=1 --number-sections --variable theme=cosmo --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpRd4w1v/rmarkdown-str253d4762d6b1.html 
#> 
#> Output created: diff_sites.html
```
