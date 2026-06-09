# Get predefined type hint

Returns a predefined R object type hint intended to be used to document
a function parameter's type.

## Usage

``` r
type(id = data_types$id, length = NULL, add_cr = TRUE)
```

## Arguments

- id:

  Type identifier. One of `"chr"`, `"date"`, `"df"`, `"fct"`, `"int"`,
  `"lgl"`, `"list"`, `"mat"`, `"num"`, `"pg_conn"` or `"raw"`

- length:

  Length of the R object to be documented. Omitted if `NULL`.

- add_cr:

  Whether or not to suffix the returned string with an [Rd line break
  (`\cr`)](https://rstudio.github.io/r-manuals/r-exts/Writing-R-documentation-files.html#sectioning).

## Value

A [glue](https://glue.tidyverse.org/reference/as_glue.html) character
scalar.

## See also

roxygen2 label functions:
[`data_roxy_lbls`](https://pkgsnip.rpkg.dev/dev/reference/data_roxy_lbls.md),
[`data_types`](https://pkgsnip.rpkg.dev/dev/reference/data_types.md),
[`description_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/description_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md)

## Examples

``` r
pkgsnip::type(id = "lgl",
              length = 3L)
#> [1] "[`logical(3)`][base::logical]\\cr"

pkgsnip::type(id = "pg_conn")
#> [1] "[`PqConnection`][RPostgres::dbGetInfo_PqConnection]\\cr"
```
