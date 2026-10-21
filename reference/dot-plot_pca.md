# Plot a dudi.pca object using factoextra

Plot a dudi.pca object using factoextra

## Usage

``` r
.plot_pca(
  dudi.pca = NULL,
  metadata = NULL,
  color_col = NULL,
  axes = axes,
  title = "default",
  subtitle = "samples"
)
```

## Arguments

- dudi.pca:

  a dudi.pca object generated with Ade4

- metadata:

  metadata table from RiboClass

- color_col:

  Name of the column in the metadata used for coloring samples.

- axes:

  Two-element vector indicating which pair of principal components to
  show.

- title:

  Title to display on the plot. 'default' for default title.

- subtitle:

  Subtitle to display on the plot. 'samples' for number of samples.
  'none' for no subtitle.

## Value

a ggplot
