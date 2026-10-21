# Generate html report about the analysis of 2’Ome profile

Generate html report about the analysis of 2’Ome profile

## Usage

``` r
report_2ome_sites(
  ribo,
  specie = "not specified",
  condition_col,
  project_name = "Unnamed project",
  output_dir = getwd(),
  comments = NULL
)
```

## Arguments

- ribo:

  a RiboClass object.

- specie:

  studied specie of the project

- condition_col:

  name or index of the column \_\_in metadata\_\_ containing the
  condition

- project_name:

  Name of the project to display on the report

- output_dir:

  Path of output directory

- comments:

  Path to a text file containing comments

## Examples

``` r
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
report_2ome_sites(ribo = ribo_adj_annot, specie = "human", 
condition_col = "condition", project_name = "name", comments = "./comment_2ome_comp1.Rmd") 
#> 
#> 
#> processing file: 2ome_analysis.Rmd
#> 1/39                                                
#> 2/39 [unnamed-chunk-1]                              
#> 3/39                                                
#> 4/39 [labrary]                                      
#> 5/39                                                
#> 6/39 [unnamed-chunk-2]                              
#> 7/39                                                
#> 8/39 [prepare metadata table]                       
#> 9/39                                                
#> 10/39 [print metadata table]                         
#> 11/39                                                
#> 12/39 [premiere table]                               
#> 13/39                                                
#> 14/39 [unnamed-chunk-3]                              
#> 15/39                                                
#> 16/39 [create title and subtitle for the 1st heatmap]
#> 17/39                                                
#> 18/39 [unnamed-chunk-4]                              
#> 19/39                                                
#> 20/39 [unnamed-chunk-5]                              
#> 21/39                                                
#> 22/39 [IQR]                                          
#> 23/39                                                
#> 24/39 [unnamed-chunk-6]                              
#> 25/39                                                
#> 26/39 [plot PCA]                                     
#> 27/39                                                
#> 28/39 [create title and subtitle for the 2nd heatmap]
#> 29/39                                                
#> 30/39 [heatmap mosts variant sites]                  
#> 31/39                                                
#> 32/39 [summary table]                                
#> 33/39                                                
#> 34/39 [print last table]                             
#> 35/39                                                
#> 36/39 [unnamed-chunk-7]                              
#> 37/39                                                
#> 38/39 [unnamed-chunk-8]                              
#> 39/39                                                
#> output file: 2ome_analysis.knit.md
#> /opt/hostedtoolcache/pandoc/3.8.3/x64/pandoc +RTS -K512m -RTS 2ome_analysis.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /home/runner/work/rRMSAnalyzer/rRMSAnalyzer/docs/reference/2ome_analysis.html --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/latex-div.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/table-classes.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --table-of-contents --toc-depth 3 --variable toc_float=1 --variable toc_selectors=h1,h2,h3 --variable toc_smooth_scroll=1 --variable toc_print=1 --template /home/runner/work/_temp/Library/rmarkdown/rmd/h/default.html --syntax-highlighting none --variable highlightjs=1 --number-sections --variable theme=cosmo --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpkpMLkT/rmarkdown-str1ead14567f64.html 
#> 
#> Output created: 2ome_analysis.html
```
