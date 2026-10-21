# RiboClass from a toy dataset

A riboclass containing 10 samples + 2 reference RNA.

## Usage

``` r
data(ribo_toy)
```

## Format

a RiboClass (S3 Class) with the following element

- data:

  list of sample dataframe

- metadata:

  metadata dataframe of all samples

- rna_names:

  dataframe containing both original and modified RNAs name

## Details

Samples are from 4 different biological conditions ("condition" column
in metadata). The sequencing has been done in two different batches
("run" column in metadata). Both batches have the same reference RNA, to
detect technical bias.
