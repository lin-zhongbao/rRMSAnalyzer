# Correct batch effect with ComBat-seq method

Batch effect of RiboMethSeq data can be adjusted using the ComBat-seq
method. adjust_bias is a wrapper to perform ComBat-seq adjustment.

It will return a new RiboClass with adjusted read end count values and
C-scores automatically recomputed with the same setup parameters.

## Usage

``` r
adjust_bias(ribo, batch, ncores = 1, ...)
```

## Arguments

- ribo:

  a RiboClass object.

- batch:

  Name of the column in metadata that contains the batch number.

- ncores:

  Number of cores to use in case of multithreading.

- ...:

  Parameters to pass to sva's
  [`ComBat_seq`](https://rdrr.io/pkg/sva/man/ComBat_seq.html) function.

## Value

RiboClass with adjusted read end count values and automatically
recomputed C-scores.

## Details

You must have a column with the batch number for each sample in your
RiboClass’s metadata.

## References

Yuqing Zhang, Giovanni Parmigiani, W Evan Johnson, ComBat-seq: batch
effect adjustment for RNA-seq count data, NAR Genomics and
Bioinformatics, Volume 2, Issue 3, 1 September 2020, lqaa078,
https://doi.org/10.1093/nargab/lqaa078

## Examples

``` r
data('ribo_toy')
ribo_toy_two <- keep_ribo_samples(ribo_toy,c('S1','RNA1','S7','RNA2'))
ribo_toy_adjusted <- adjust_bias(ribo_toy_two,'run') 
#> Found 2 batches
#> Using null model in ComBat-seq.
#> Adjusting for 0 covariate(s) or covariate level(s)
#> Estimating dispersions
#> Fitting the GLM model
#> Shrinkage off - using GLM estimates for parameters
#> Adjusting the data
#> Recomputing c-score with the following parameters :
#> - C-score method : median
#> - Flanking window : 6
```
