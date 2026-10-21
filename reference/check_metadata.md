# Check if a vector of strings correspond to valid metadata in a given RiboClass

This function returns nothing if each string matches with a metadata. It
will stop and display a formatted error message if one or more strings
in the vector are not valid metadata.

## Usage

``` r
check_metadata(ribo, metadata_name)
```

## Arguments

- ribo:

  A RiboClass.

- metadata_name:

  The vector of string to check against ribo's metadata.

## Value

Invisibly returns NULL if all strings are valid metadata; otherwise, the
function stops with an error.
