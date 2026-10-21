# Compute c-score for all samples in a riboclass

In this package, the C-score is calculated for every position. As it can
be useful to find positions not yet identified as methylated.

This function is called automatically when loading data or after
adjusting biases in end read count data with ComBat-seq. It can be still
called manually to modify how the C-score is currently computed.

For each RNA, the first and last positions cannot be calculated if the
local coverage is shorter than the flanking argument. Their value will
be NA instead.

## Usage

``` r
compute_cscore(ribo = NULL, flanking = 6, method = "median", ncores = 1)
```

## Arguments

- ribo:

  A RiboClass object.

- flanking:

  Size of the local coverage.

- method:

  Computation method of the local coverage. Either 'median' or 'mean'.

- ncores:

  Number of cores to use in case of multithreading.

## Value

A RiboClass with c-score columns appended to each sample's data.

## References

Birkedal, U., Christensen-Dalsgaard, M., Krogh, N., Sabarinathan, R.,
Gorodkin, J. and Nielsen, H. (2015), Profiling of Ribose Methylations in
RNA by High-Throughput Sequencing. Angew. Chem. Int. Ed., 54: 451-455.
https://doi.org/10.1002/anie.201408362

## Examples

``` r
data('ribo_toy')
ribo_subsetted <- keep_ribo_samples(ribo_toy,'S1')
ribo_with_cscore_med <- compute_cscore(ribo_subsetted, ncores = 2)
ribo_with_cscore_mean <- compute_cscore(ribo_subsetted, method = 'mean', ncores = 2)
```
