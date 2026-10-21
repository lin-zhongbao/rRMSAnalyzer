# Generate html report about possible batch effect for a given RiboClass.

Generate html report about possible batch effect for a given RiboClass.

## Usage

``` r
report_qc(
  ribo,
  specie = "not specified",
  library_col,
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

- library_col:

  name or index of the column \_\_in metadata\_\_ containing the library

- project_name:

  Name of the project to display on the report

- output_dir:

  Path of output directory

- comments:

  Path to a text file containing comments

## Value

an html file

## Examples

``` r
data('ribo_toy')
report_qc(ribo_toy, "human", "run")
#> 
#> 
#> processing file: quality_control.Rmd
#> 1/33                              
#> 2/33 [unnamed-chunk-1]            
#> 3/33                              
#> 4/33 [labrary]                    
#> 5/33                              
#> 6/33 [unnamed-chunk-2]            
#> 7/33                              
#> 8/33 [unnamed-chunk-3]            
#> 9/33                              
#> 10/33 [end read count distribution]
#> 11/33                              
#> 12/33 [relative log cov]           
#> 13/33                              
#> 14/33 [unnamed-chunk-4]            
#> 15/33                              
#> 16/33 [get outlier data frame]     
#> 17/33                              
#> 18/33 [heatmap annotated]          
#> 19/33                              
#> 20/33 [unnamed-chunk-5]            
#> 21/33                              
#> 22/33 [unnamed-chunk-6]            
#> 23/33                              
#> 24/33 [not corrected cscore PCA, ] 
#> 25/33                              
#> 26/33 [write table]                
#> 27/33                              
#> 28/33 [print outlier samples]      
#> 29/33                              
#> 30/33 [unnamed-chunk-7]            
#> 31/33                              
#> 32/33 [unnamed-chunk-8]            
#> 33/33                              
#> output file: quality_control.knit.md
#> /opt/hostedtoolcache/pandoc/3.8.3/x64/pandoc +RTS -K512m -RTS quality_control.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /home/runner/work/rRMSAnalyzer/rRMSAnalyzer/docs/reference/quality_control.html --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/latex-div.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/table-classes.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --table-of-contents --toc-depth 3 --variable toc_float=1 --variable toc_selectors=h1,h2,h3 --variable toc_smooth_scroll=1 --variable toc_print=1 --template /home/runner/work/_temp/Library/rmarkdown/rmd/h/default.html --syntax-highlighting none --variable highlightjs=1 --number-sections --variable theme=cosmo --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpRd4w1v/rmarkdown-str253d1a3c2bea.html 
#> 
#> Output created: quality_control.html
```
