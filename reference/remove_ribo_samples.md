# Remove samples from a Riboclass object

Remove samples from a Riboclass object

## Usage

``` r
remove_ribo_samples(ribo = NULL, samples_to_delete = NULL)
```

## Arguments

- ribo:

  A RiboClass object.

- samples_to_delete:

  A vector containing the names of samples to remove.

## Value

A RiboClass without the removed samples in data and metadata.

## Examples

``` r
data("ribo_toy")
ribo_test <- remove_ribo_samples(ribo = ribo_toy, samples_to_delete = c("S1", "S2"))
```
