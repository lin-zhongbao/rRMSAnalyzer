# Compute statistics (p-value for, Welch, Wilcoxon, Kruskal, ANOVA test) for C-score based on condition column

Compute statistics (p-value for, Welch, Wilcoxon, Kruskal, ANOVA test)
for C-score based on condition column

## Usage

``` r
compute_pval(ribo = ribo, test = NULL, condition_col = NULL)
```

## Arguments

- ribo:

  a RiboClass object

- test:

  statistic test wanted student, anova or kruskal

- condition_col:

  column condition in metadata

## Value

a dataframe

## Examples

``` r
data("ribo_toy")
compute_pval(ribo = ribo_toy, test = "student", condition_col = "condition")
#> Site  ignored : doesn't have at least 2 replicats.
#> Warning: There were 2 warnings in `dplyr::summarise()`.
#> The first warning was:
#> ℹ In argument: `p_value = { ... }`.
#> Caused by warning:
#> ! `cur_data()` was deprecated in dplyr 1.1.0.
#> ℹ Please use `pick()` instead.
#> ℹ The deprecated feature was likely used in the rRMSAnalyzer package.
#>   Please report the issue at
#>   <https://github.com/RibosomeCRCL/rRMSAnalyzer/issues>.
#> ℹ Run `dplyr::last_dplyr_warnings()` to see the 1 remaining warning.
#> # A tibble: 0 × 4
#> # ℹ 4 variables: annotated_sites <chr>, p_value <dbl>, delta_c_score <dbl>,
#> #   p_adj <dbl>
```
