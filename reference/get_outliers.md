# Create a outlier summary table (used in plot_heatmap_annotated)

Create a outlier summary table (used in plot_heatmap_annotated)

## Usage

``` r
get_outliers(ribo = ribo)
```

## Arguments

- ribo:

  a RiboClass object

## Value

a data frame

## Examples

``` r
data("ribo_toy")
get_outliers(ribo = ribo_toy)
#>      samplename condition run          filename comp1 median_coverage
#> S1           S1     cond1  L2   S1_5_counts.csv cond1            1761
#> S2           S2     cond2  L1   S2_5_counts.csv cond2            1292
#> S3           S3     cond2  L2   S3_5_counts.csv cond2            2212
#> S4           S4     cond2  L1   S4_5_counts.csv cond2            2147
#> S5           S5     cond2  L2   S5_5_counts.csv cond2            1682
#> S6           S6     cond2  L2   S6_5_counts.csv cond2            1774
#> S7           S7     cond2  L1   S7_5_counts.csv cond2             696
#> S8           S8     cond1  L1   S8_5_counts.csv cond1            1759
#> S9           S9     cond1  L2   S9_5_counts.csv cond1            1394
#> S10         S10     cond1  L1  S10_5_counts.csv cond1            1625
#> S11         S11     cond1  L1  S11_5_counts.csv cond1            1632
#> S12         S12     cond1  L2  S12_5_counts.csv cond1            1683
#> RNA1       RNA1   RNA ref  L1 RNA1_5_counts.csv  <NA>            1593
#> RNA2       RNA2   RNA ref  L2 RNA2_5_counts.csv  <NA>            2316
#>      coverage_quality   rlc_median rlc_median_quality total_outliers
#> S1               pass  0.057513954               pass              0
#> S2               pass -0.343901151               pass              0
#> S3               pass  0.395425908               pass              0
#> S4               pass  0.333701202               pass              0
#> S5               pass -0.011397603               pass              0
#> S6               pass  0.049972127               pass              0
#> S7               pass -1.254760930            warning              1
#> S8               pass  0.061861102               pass              0
#> S9               pass -0.250486582               pass              0
#> S10              pass -0.076701175               pass              0
#> S11              pass -0.047129087               pass              0
#> S12              pass  0.006275325               pass              0
#> RNA1             pass -0.106199404               pass              0
#> RNA2             pass  0.382232951               pass              0
```
