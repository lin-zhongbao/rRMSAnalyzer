# (internal) Plot a coa object

(internal) Plot a coa object

## Usage

``` r
.plot_coa(
  dudi.coa = NULL,
  metadata = NULL,
  color_col = NULL,
  axes = c(1, 2),
  title = "default",
  subtitle = "default"
)
```

## Arguments

- dudi.coa:

  A coa object

- metadata:

  RiboClass's metadata dataframe

- color_col:

  Name of the column in the metadata used for coloring samples.

- axes:

  Two-element vector indicating which pair of COA components to show.

- title:

  Title to display on the plot. 'default' for default title.

- subtitle:

  Subtitle to display on the plot. 'samples' for number of samples.
  'none' for no subtitle.

## Value

A ggplot object containing the COA
