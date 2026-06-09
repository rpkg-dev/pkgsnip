# Get predefined `@param` label

Returns a predefined label intended to be used to document a function
parameter using
[roxygen2](https://roxygen2.r-lib.org/reference/roxygen2-package.html)'s
[`@param`](https://roxygen2.r-lib.org/articles/rd.html#functions) tag.
Shorthand for [roxy_lbl(type =
"param")](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md).

## Usage

``` r
param_lbl(id = roxy_lbls(type = "param")$id, ...)
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

    #' @param PARAM_NAME `r pkgsnip::param_lbl("ID")`

Note that the above only works in [roxygen2
7.1.0+](https://www.tidyverse.org/blog/2020/03/roxygen2-7-1-0/).

Currently, the following parameter labels are available:

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
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::param_lbl(id = "eol")
#> End of line (EOL) control character sequence. One of
#> - `"LF"` for the line feed (LF) character (`"\n"`). The standard on Unix and Unix-like systems (Linux, macOS, *BSD, etc.) and the **default**.
#> - `"CRLF"` for the carriage return + line feed (CR+LF) character sequence (`"\r\n"`). The standard on Microsoft Windows, DOS and some other systems.
#> - `"CR"` for the carriage return (CR) character (`"\r"`). The standard on classic Mac OS and some other antiquated systems.
#> - `"LFCR"` for the line feed + carriage return (LF+CR) character sequence (`"\n\r"`). The standard on RISC OS and some other exotic systems.

# some labels take additional arguments
pkgsnip::param_lbl(id = "http_method",
                   one_of = c("GET", "POST"))
#> [HTTP request method](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods).
#>   One of GET or POST.
```
