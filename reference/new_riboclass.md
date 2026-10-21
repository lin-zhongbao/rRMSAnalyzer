# Create a RiboClass from count files and metadata.

Read ribomethseq count files and their associated metadata and merge
them into a RiboClass. **This is the constructor of the RiboClass S3
class.** All other functions use the RiboClass as an input.

The constructor cannot be called directly. To create a RiboClass, please
use
[`load_ribodata`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/load_ribodata.md).

## Usage

``` r
new_riboclass(
  count_path,
  metadata = NULL,
  count_sep = "\t",
  metadata_sep = ",",
  count_header = FALSE,
  count_value = 3,
  count_rnaid = 1,
  count_pos = 2,
  metadata_key = "filename",
  metadata_id = NULL
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

## Value

A RiboClass.

## Details

The RiboClass object is a S3 Class with three elements :

**data** : a list of dataframe, each corresponding to a sample. Each
dataframe starts with the following columns :

- rna : the name of the RNA for a given position.

- rnapos : the position **on the current RNA**.

- count : the number of read starting (5'end) or ending (3'end) at this
  position.

- site : the name of the site, which will be empty after the RiboClass
  creation. To fill this column, use
  [`annotate_site`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/annotate_site.md).

**metadata** : a dataframe containing all information related to each
sample. This is particularly useful for technical biases correction
(with
[`adjust_bias`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/adjust_bias.md))
and plot functions (for coloring or add an extra layer of informations).
If no metadata are given, an empty one will be generated.

**rna_names** : a dataframe containing original and current rna names.
The name of RNAs can be renamed for the sake of clarity on plots (with
[`rename_rna`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/rename_rna.md)),
but the original ones can contain important information, like NCBI ID.

the path given in **count_path** should contains only necessary CSV
files (one per sample). While the directory structure is not important,
make sure each sample has an unique filename.

The path to the csv file or the dataframe given in **metadata** must
contains a filename column, as this will serve to link metadata with the
dataframes in data during the RiboClass creation.
