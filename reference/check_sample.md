# Check if a vector of strings correspond to valid samplenames in a given RiboClass

This function returns nothing if each string matches with the
samplenames It will stop and display a formatted error message if one or
more strings in the vector are not valid samplenames

## Usage

``` r
check_sample(ribo, sample_names)
```

## Arguments

- ribo:

  A RiboClass.

- sample_names:

  The vector of string to check against ribo's samplenames

## Value

Invisibly returns NULL if all strings are valid data; otherwise, the
function stops with an error.
