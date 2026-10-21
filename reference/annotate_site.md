# Annotate sites according to a dataframe containing annotation

Annotate sites of interest by giving them a custom name. Some analyses
and plots can be applied on these specific sites when only_annotated
parameter is available.

## Usage

``` r
annotate_site(ribo, annot, anno_rna = 2, anno_pos = 1, anno_value = 3)
```

## Arguments

- ribo:

  a RiboClass object to annotate, see :
  [`load_ribodata`](https://ribosomecrcl.github.io/rRMSAnalyzer/reference/load_ribodata.md)

- annot:

  The dataframe containing annotations.

- anno_rna:

  Name or index of the column in annot containing RNAs' name.

- anno_pos:

  Name or index of the column in annot containing site position inside
  RNA.

- anno_value:

  Name or index of the column in annot containing nomenclature to apply.

## Value

An annotated RiboClass (the site column in data should be filled with
names from annot_value for known position).

## Details

This function will fill the 'site' column in your RiboClass's data with
a nomenclature given in annot.

## Examples

``` r
data('ribo_toy')
data('human_methylated')
ribo_toy <- rename_rna(ribo_toy ,c('5S','5.8S','18S','28S'))
ribo_toy <- annotate_site(ribo_toy,human_methylated,anno_value ='Nomenclature')
```
