# Print Wilcoxon result in report

Print Wilcoxon result in report

## Usage

``` r
render_html_wilcoxon(ribo, condition_col, ctrl, cases, pthr, cscore_cutoff)
```

## Arguments

- ribo:

  a RiboClass object

- condition_col:

  the condition column used for calculation in metadata

- ctrl:

  control in comparisons table

- cases:

  case in comparison table

- pthr:

  threshold of the p_value

- cscore_cutoff:

  threshold of c-score

## Value

a tag list

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
comparisons <- tibble::tibble(comp = c("comp1"),
                              ctrl = c("cond1"),
                              cases = c("cond2") )  
ctrl <- comparisons$ctrl
cases <- comparisons$cases 
render_html_wilcoxon(ribo_toy, "condition", ctrl, cases, pthr = 0.05, cscore_cutoff = 0.05)
#> $ui
#> <h4>cond2 vs cond1</h4>
#> <div class="datatables html-widget html-fill-item" id="htmlwidget-e5c8c404fe174e4c81bd" style="width:100%;height:auto;"></div>
#> <script type="application/json" data-for="htmlwidget-e5c8c404fe174e4c81bd">{"x":{"filter":"none","vertical":false,"extensions":["Buttons"],"data":[["18S_Am1031","18S_Am1383","18S_Am159","18S_Am166","18S_Am1678","18S_Am27","18S_Am468","18S_Am484","18S_Am512","18S_Am576","18S_Am590","18S_Am668","18S_Am99","18S_Cm1272","18S_Cm1391","18S_Cm1703","18S_Cm174","18S_Cm462","18S_Cm517","18S_Cm621","18S_Cm797","18S_Gm1328","18S_Gm1447","18S_Gm1490","18S_Gm436","18S_Gm509","18S_Gm601","18S_Gm644","18S_Gm683","18S_Gm867","18S_Um116","18S_Um121","18S_Um1288","18S_Um1326","18S_Um1442","18S_Um1668","18S_Um172","18S_Um1804","18S_Um354","18S_Um428","18S_Um627","18S_Um799","28S_Am1310","28S_Am1313","28S_Am1511","28S_Am1521","28S_Am1858","28S_Am2350","28S_Am2388","28S_Am2774","28S_Am2802","28S_Am3697","28S_Am3703","28S_Am3739","28S_Am3764","28S_Am3804","28S_Am3809","28S_Am3846","28S_Am389","28S_Am391","28S_Am4493","28S_Am4541","28S_Am4560","28S_Cm1327","28S_Cm1868","28S_Cm2338","28S_Cm2352","28S_Cm2409","28S_Cm2791","28S_Cm2811","28S_Cm2848","28S_Cm3680","28S_Cm3787","28S_Cm3820","28S_Cm3848","28S_Cm3866","28S_Cm4032","28S_Cm4426","28S_Cm4506","28S_Gm1303","28S_Gm1509","28S_Gm1612","28S_Gm1747","28S_Gm2351","28S_Gm2411","28S_Gm2863","28S_Gm3606","28S_Gm3723","28S_Gm3771","28S_Gm3878","28S_Gm3923","28S_Gm4020","28S_Gm4166","28S_Gm4198","28S_Gm4340","28S_Gm4362","28S_Gm4464","28S_Gm4469","28S_Gm4588","28S_Gm4593","28S_Gm4607","28S_Um1760","28S_Um2402","28S_Um2824","28S_Um3797","28S_Um3904","28S_Um4197","28S_Um4276","28S_Um4468","28S_Um4590","5.8S_Gm75","5.8S_Um14"],["2.298e-01","3.785e-01","9.362e-01","2.980e-01","2.980e-01","2.980e-01","4.712e-01","3.785e-01","8.102e-01","5.075e-03","1.000e+00","4.712e-01","3.785e-01","5.075e-03","8.239e-03","6.889e-01","1.735e-01","4.712e-01","1.000e+00"," NaN","6.889e-01","3.785e-01","2.024e-02","2.298e-01","5.752e-01","6.889e-01","1.282e-01","2.980e-01","4.712e-01","6.555e-02","1.307e-02","3.785e-01","1.282e-01","5.752e-01","1.307e-02"," NaN","5.752e-01","4.712e-01","3.064e-02","8.102e-01","6.889e-01","3.785e-01","1.000e+00","4.712e-01","9.362e-01","2.980e-01","8.102e-01","2.298e-01","6.555e-02","5.075e-03","6.555e-02","4.712e-01","3.064e-02","6.889e-01","3.785e-01","2.980e-01","1.735e-01","2.024e-02","9.362e-01","9.270e-02","9.362e-01","5.075e-03","1.307e-02","5.075e-03","5.075e-03","6.555e-02","1.307e-02","6.555e-02","8.239e-03","1.735e-01","1.307e-02","6.889e-01","1.000e+00","8.239e-03","1.282e-01","2.298e-01","5.752e-01","2.024e-02","2.980e-01","4.533e-02","1.282e-01","6.555e-02","5.752e-01","6.889e-01","6.555e-02","9.362e-01","6.555e-02","4.712e-01","2.298e-01","6.889e-01","9.270e-02","3.064e-02","6.889e-01","2.298e-01","3.064e-02","9.362e-01","2.980e-01","1.282e-01","4.533e-02","3.064e-02","5.075e-03"," NaN","8.239e-03","3.785e-01","5.752e-01","8.102e-01","6.889e-01","2.298e-01","4.712e-01","5.752e-01","6.889e-01","5.075e-03"],[0.002,0.001,0.001,0.005,0.008,0.004,0.003,0.005,0,0.109,0,0.005,0.004,0.08599999999999999,0.042,0.001,0.032,0.005,0,0,0.001,0.003,0.09,0.004,0.01,0.002,0.006,0.005,0.003,0.018,0.029,0.005,0.008999999999999999,0.001,0.019,0,0.004,0.001,0.01,0.002,0.001,0.005,0,0.016,0,0.003,0.006,0.005,0.017,0.168,0.008999999999999999,0.01,0.018,0.001,0.019,0.008,0.023,0.012,0.005,0.005,0.002,0.041,0.038,0.048,0.105,0.011,0.023,0.016,0.028,0.005,0.065,0.002,0.011,0.018,0.018,0.002,0.004,0.041,0.002,0.063,0.004,0.002,0.001,0.003,0.014,0.015,0.049,0.019,0.002,0,0.02,0.064,0,0.007,0.021,0,0.02,0.018,0.08500000000000001,0.155,0.166,0,0.048,0.005,0.001,0.002,0.001,0.005,0.002,0.053,0.002,0.026],["4.816e-01","6.067e-01","9.719e-01","5.413e-01","5.413e-01","5.413e-01","6.670e-01","6.067e-01","8.920e-01","6.915e-02","1.000e+00","6.670e-01","6.067e-01","6.915e-02","7.484e-02","7.904e-01","4.202e-01","6.670e-01","1.000e+00"," NaN","7.904e-01","6.067e-01","1.103e-01","4.816e-01","7.464e-01","7.904e-01","3.327e-01","5.413e-01","6.670e-01","2.041e-01","8.377e-02","6.067e-01","3.327e-01","7.464e-01","8.377e-02"," NaN","7.464e-01","6.670e-01","1.336e-01","8.920e-01","7.904e-01","6.067e-01","1.000e+00","6.670e-01","9.719e-01","5.413e-01","8.920e-01","4.816e-01","2.041e-01","6.915e-02","2.041e-01","6.670e-01","1.336e-01","7.904e-01","6.067e-01","5.413e-01","4.202e-01","1.103e-01","9.719e-01","2.731e-01","9.719e-01","6.915e-02","8.377e-02","6.915e-02","6.915e-02","2.041e-01","8.377e-02","2.041e-01","7.484e-02","4.202e-01","8.377e-02","7.904e-01","1.000e+00","7.484e-02","3.327e-01","4.816e-01","7.464e-01","1.103e-01","5.413e-01","1.830e-01","3.327e-01","2.041e-01","7.464e-01","7.904e-01","2.041e-01","9.719e-01","2.041e-01","6.670e-01","4.816e-01","7.904e-01","2.731e-01","1.336e-01","7.904e-01","4.816e-01","1.336e-01","9.719e-01","5.413e-01","3.327e-01","1.830e-01","1.336e-01","6.915e-02"," NaN","7.484e-02","6.067e-01","7.464e-01","8.920e-01","7.904e-01","4.816e-01","6.670e-01","7.464e-01","7.904e-01","6.915e-02"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>annotated_sites<\/th>\n      <th>p_value<\/th>\n      <th>delta_c_score<\/th>\n      <th>p_adj<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":20,"scrollX":true,"dom":"Bfrtip","buttons":[{"extend":"csv","filename":"summary_table_of_Welch_test"},{"extend":"excel","filename":"summary_table_of_Welch_test"},{"extend":"pdf","filename":"summary_table_of_Welch_test"}],"columnDefs":[{"className":"dt-right","targets":2},{"name":"annotated_sites","targets":0},{"name":"p_value","targets":1},{"name":"delta_c_score","targets":2},{"name":"p_adj","targets":3}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[10,20,25,50,100]}},"evals":[],"jsHooks":[]}</script>
#> <p>No significantly differentially methylated rRNA 2'O-methylation (2'Ome) 
#> sites were identified under the current threshold (Wilcoxon rank-sum test,
#> adjusted p-value < 0.05 &  |deltaC-score| > 0.05).</p>
#> 
#> $plot
#> $plot$plot_env
#> $plot$plot_env$significant_sites
#> character(0)
#> 
#> 
#> 
```
