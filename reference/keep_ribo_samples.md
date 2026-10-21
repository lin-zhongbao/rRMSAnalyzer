# Keep only selected samples from a RiboClass Object.

Keep only selected samples from a RiboClass Object.

## Usage

``` r
keep_ribo_samples(ribo = NULL, samples_to_keep = NULL)
```

## Arguments

- ribo:

  A RiboClass object.

- samples_to_keep:

  A vector containing the names of samples to keep.

## Value

A RiboClass with only selected samples in data and metadata.

## Examples

``` r
data("ribo_toy")
ribo_test <- keep_ribo_samples(ribo = ribo_toy, samples_to_keep = c("S1", "S2"))
```
