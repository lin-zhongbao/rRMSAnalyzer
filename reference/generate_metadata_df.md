# Generate a metadata dataframe, given a path.

Generate an "empty" dataframe with the required filename and samplename
columns to include in a riboclass.

Names in the samplename column can be modified, as long as each sample
has an unique name.

**The filename column cannot be modified, unless the filenames on disk
have changed.** Otherwise, it would prevent
[`new_riboclass`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/new_riboclass.md)
from linking data and metadata...

## Usage

``` r
generate_metadata_df(counts_folder_path, create_samplename_col = TRUE)
```

## Arguments

- counts_folder_path:

  The path where count files are stored.

- create_samplename_col:

  Generate a sample name col with filename by default

## Value

a data frame
