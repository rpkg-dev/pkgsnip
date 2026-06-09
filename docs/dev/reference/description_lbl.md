# Get predefined `@description` label

Returns a predefined label intended to be used as a function's
description using
[roxygen2](https://roxygen2.r-lib.org/reference/roxygen2-package.html)'s
[`@description`](https://roxygen2.r-lib.org/reference/tags-rd.html) tag.
Shorthand for [roxy_lbl(type =
"description")](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md).

## Usage

``` r
description_lbl(id = roxy_lbls(type = "description")$id, ...)
```

## Arguments

- id:

  Label identifier. See
  [`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md)
  for possible values.

- ...:

  Further named arguments passed on to
  [`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md).

## Value

A [glue](https://glue.tidyverse.org/reference/as_glue.html) character
scalar.

## Details

A label can be inserted using [inline R
code](https://roxygen2.r-lib.org/articles/reuse.html#inline-code) as
follows:

    #' @description `r pkgsnip::description_lbl("ID")`

Note that the above only works in [roxygen2
7.1.0+](https://www.tidyverse.org/blog/2020/03/roxygen2-7-1-0/).

Currently, the following `@description` labels are available:

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
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::description_lbl(id = "dyn_dots_support")
#> [Dynamic dots][rlang::dyn-dots] are supported.

# some labels take additional arguments
pkgsnip::description_lbl(id = "opt_global_max_cache_age",
                         global_max_cache_age = "6h",
                         pkg = "foo")
#> Note that [on package load][base::ns-hooks], the cache will be cleared from entries exceeding a global maximum timespan set by the \R [option][base::options()] `foo.global_max_cache_age` (defaults to `6h` if unset).

# note that the `pkg` argument always defaults to the current package
# (none if run from the global environment)
pkgsnip::description_lbl(id = "opt_global_max_cache_age",
                         global_max_cache_age = "6h")
#> Note that [on package load][base::ns-hooks], the cache will be cleared from entries exceeding a global maximum timespan set by the \R [option][base::options()] `pkgsnip.global_max_cache_age` (defaults to `6h` if unset).
```
