# Load csv files from GenomeCov and their associated metadata. Create a RiboClass.

Import your count CSV files and the metadata to create a RiboClass. The
RiboClass is used by rRMSAnalyzer package for all analyses.

**This function serves as the entrypoint of rRMSAnalyzer.**

## Usage

``` r
load_ribodata(
  count_path,
  metadata = NULL,
  count_sep = "\t",
  metadata_sep = ",",
  count_header = FALSE,
  count_value = 3,
  count_rnaid = 1,
  count_pos = 2,
  metadata_key = "filename",
  metadata_id = NULL,
  flanking = 6,
  method = "median",
  ncores = 1
)
```

## Arguments

- count_path:

  (required) path to the data folder containing count files.

- metadata:

  Data frame or path to a CSV file containing metadata.

- count_sep:

  Delimiter used for the CSV files.

- metadata_sep:

  Delimiter used in metadata (if imported from file).

- count_header:

  Boolean, specify if count files have a header or not.

- count_value:

  Name or index of the column containing count values.

- count_rnaid:

  Name or index of the column containing the name of the RNA in count
  data.

- count_pos:

  Name or index of the column containing the site's position in count
  data.

- metadata_key:

  (required when metadata not null) Name or index of the column
  containing the samples' filename.

- metadata_id:

  Name or index of the column containing the sample name.

- flanking:

  Size of the local coverage.

- method:

  Computation method of the local coverage. Either 'median' or 'mean'.

- ncores:

  Number of cores to use in case of multithreading.

## Value

a RiboClass

## Details

load_ribodata is a wrapper of
[`new_riboclass`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/new_riboclass.md)
and
[`compute_cscore`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/compute_cscore.md).

## See also

new_riboclass
