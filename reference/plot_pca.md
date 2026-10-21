# Principal component analysis of a RiboClass object

Principal component analysis of a RiboClass object

## Usage

``` r
plot_pca(
  ribo,
  color_col = NULL,
  axes = c(1, 2),
  only_annotated = FALSE,
  title = "default",
  subtitle = "samples",
  object_only = FALSE
)
```

## Arguments

- ribo:

  A RiboClass object.

- color_col:

  Name of the column in the metadata used for coloring samples.

- axes:

  Two-element vector indicating which pair of principal components to
  show.

- only_annotated:

  If TRUE, use only annotated sites to plot PCA.

- title:

  Title to display on the plot. 'default' for default title.

- subtitle:

  Subtitle to display on the plot. 'samples' for number of samples.
  'none' for no subtitle.

- object_only:

  Return directly the full dudi.pca object, without generating the plot.

## Value

A ggplot or a dudi.pca object if object_only is set to True.

## Examples

``` r
data('ribo_toy')
plot_pca(ribo_toy,'run')
```
