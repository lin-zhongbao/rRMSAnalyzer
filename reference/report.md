# Function to generate HTML report using Rmarkdown

Note : if you want to create your own report template, please make sure
it has the following header :

— title: "RMSAnalyzer : title of the report" output: html_document

params: library_col: "library" condition_col: "condition" ribo_name:
"ribo" project_name: "Unnamed project" —

## Usage

``` r
report(
  ribo,
  specie = "not specified",
  ribo_name,
  rmdfile,
  condition_col,
  library_col,
  project_name,
  output_dir,
  comments = NULL
)
```

## Arguments

- ribo:

  a RiboClass object.

- specie:

  studied specie of the project

- ribo_name:

  name of RiboClass

- rmdfile:

  filename of the Rmarkdown template to use.

- condition_col:

  name or index of the column \_\_in metadata\_\_ containing the
  condition

- library_col:

  name or index of the column \_\_in metadata\_\_ containing the library

- project_name:

  Name of the project to display on the report

- output_dir:

  Path of output directory

- comments:

  Path to a text file containing comments

## Value

an html file
