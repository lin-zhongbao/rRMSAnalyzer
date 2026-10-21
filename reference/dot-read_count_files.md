# Import and transform a list of count files for a RiboClass

This internal function is used to generate the "data" part of the
RiboClass. It will read all CSV files and turn them into a list of
dataframes.

## Usage

``` r
.read_count_files(
  path_to_files,
  sep,
  header,
  rna_col,
  position_col,
  count_value,
  metadata_filenames = NULL
)
```

## Arguments

- path_to_files:

  path to the folder containing count files

- sep:

  CSV seperator

- header:

  does the files contain an header ?

- rna_col:

  position of the column containing RNA name

- position_col:

  position of the column containing the genomic position

- count_value:

  position of the column contaning the count for the given genomic
  position

- metadata_filenames:

  Filenames in metadata to check against

## Value

a list of sample dataframes
