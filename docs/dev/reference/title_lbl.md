# Get predefined `@title` label

Returns a predefined label intended to be used to document a function's
title using
[roxygen2](https://roxygen2.r-lib.org/reference/roxygen2-package.html)'s
[`@title`](https://roxygen2.r-lib.org/reference/tags-rd.html) tag.
Shorthand for [roxy_lbl(type =
"title")](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md).

## Usage

``` r
title_lbl(id = roxy_lbls(type = "title")$id, as_sentence = FALSE, ...)
```

## Arguments

- id:

  Label identifier. See
  [`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md)
  for possible values.

- as_sentence:

  Whether or not to format the resulting string as a full sentence, i.e.
  with the first letter capitalized and a period at the end.

- ...:

  Further named arguments used to tailor the label to your needs. Not
  all labels require additional arguments, see
  [`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md)
  for an overview. If a required argument is not explicitly provided, it
  is searched for in the [parent
  frames](https://rdrr.io/r/base/sys.parent.html).

## Value

A [glue](https://glue.tidyverse.org/reference/as_glue.html) character
scalar.

## Details

A label can be inserted using [inline R
code](https://roxygen2.r-lib.org/articles/reuse.html#inline-code) as
follows:

    #' @title `r pkgsnip::title_lbl("ID")`

Note that the above only works in [roxygen2
7.1.0+](https://www.tidyverse.org/blog/2020/03/roxygen2-7-1-0/).

Currently, the following `@title` labels are available:

|                            |                               |
|----------------------------|-------------------------------|
| **id**                     | **arguments**                 |
| `cli_markup_support`       |                               |
| `date`                     |                               |
| `dates`                    |                               |
| `datetime`                 |                               |
| `datetimes`                |                               |
| `dbi_connection`           |                               |
| `df_or_tibble`             |                               |
| `dm`                       |                               |
| `dyn_dots_support`         |                               |
| `end_date`                 |                               |
| `eol`                      |                               |
| `funky_config`             | `pkg`                         |
| `ggplot2_obj`              |                               |
| `glue_chr`                 |                               |
| `gt_obj`                   |                               |
| `http_method`              | `one_of`                      |
| `max_cache_age`            |                               |
| `max_tries`                |                               |
| `num_vrsn`                 |                               |
| `opt_global_max_cache_age` | `pkg`, `global_max_cache_age` |
| `path`                     |                               |
| `paths`                    |                               |
| `pkg`                      |                               |
| `plotly_obj`               |                               |
| `quiet`                    |                               |
| `r_obj`                    |                               |
| `resp_obj`                 |                               |
| `show_progress`            |                               |
| `start_date`               |                               |
| `strict_list`              |                               |
| `sym`                      |                               |
| `tbl_data`                 |                               |
| `tibble`                   |                               |
| `tibble_cols`              | `cols`                        |
| `tibble_custom`            | `custom`                      |
| `tidy_select_support`      |                               |
| `use_cache`                |                               |

Note that the `pkg` argument defaults to the name of the package from
which this function is called (`NULL` if not run within a package
environment).

## See also

roxygen2 label functions:
[`data_roxy_lbls`](https://pkgsnip.rpkg.dev/dev/reference/data_roxy_lbls.md),
[`data_types`](https://pkgsnip.rpkg.dev/dev/reference/data_types.md),
[`description_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/description_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
# some labels take additional arguments
pkgsnip::title_lbl(id = "funky_config",
                   pkg = "foo")
#> foo package configuration data

# note that the `pkg` argument always defaults to the current package
# (none if run from the global environment)
pkgsnip::title_lbl(id = "funky_config")
#> pkgsnip package configuration data
```
