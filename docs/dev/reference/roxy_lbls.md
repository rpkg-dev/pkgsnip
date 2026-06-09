# Get a table of all available roxygen2 tag labels

Returns a
[tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
listing all parameter labels included in this package, together with
their `id` which can be provided as the `id` argument of
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
etc.

## Usage

``` r
roxy_lbls(type = "default")
```

## Arguments

- type:

  The label type to return label values for. One of `"default"`,
  `"author"`, `"concept"`, `"description"`, `"details"`, `"field"`,
  `"format"`, `"keywords"`, `"param"`, `"references"`, `"return"`,
  `"section"`, `"seealso"`, `"slot"`, `"source"` or `"title"`.

## Value

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html).

## Details

Currently, the following roxygen2 tag labels are available:

|                            |          |                               |
|----------------------------|----------|-------------------------------|
| **id**                     | **type** | **arguments**                 |
| `cli_markup_support`       | default  |                               |
| `date`                     | default  |                               |
| `dates`                    | default  |                               |
| `datetime`                 | default  |                               |
| `datetimes`                | default  |                               |
| `dbi_connection`           | default  |                               |
| `df_or_tibble`             | default  |                               |
| `dm`                       | default  |                               |
| `dyn_dots_support`         | default  |                               |
| `end_date`                 | default  |                               |
| `eol`                      | default  |                               |
| `funky_config`             | default  | `pkg`                         |
| `funky_config`             | title    | `pkg`                         |
| `ggplot2_obj`              | default  |                               |
| `glue_chr`                 | default  |                               |
| `gt_obj`                   | default  |                               |
| `http_method`              | default  | `one_of`                      |
| `max_cache_age`            | default  |                               |
| `max_tries`                | default  |                               |
| `num_vrsn`                 | default  |                               |
| `opt_global_max_cache_age` | default  | `pkg`, `global_max_cache_age` |
| `path`                     | default  |                               |
| `paths`                    | default  |                               |
| `pkg`                      | default  |                               |
| `plotly_obj`               | default  |                               |
| `quiet`                    | default  |                               |
| `r_obj`                    | default  |                               |
| `resp_obj`                 | default  |                               |
| `show_progress`            | default  |                               |
| `start_date`               | default  |                               |
| `strict_list`              | default  |                               |
| `sym`                      | default  |                               |
| `tbl_data`                 | default  |                               |
| `tibble`                   | default  |                               |
| `tibble_cols`              | default  | `cols`                        |
| `tibble_custom`            | default  | `custom`                      |
| `tidy_select_support`      | default  |                               |
| `use_cache`                | default  |                               |

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
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::roxy_lbls(type = "title")
#> # A tibble: 37 × 3
#>    id                 type    value                                                                                                         
#>    <chr>              <chr>   <chr>                                                                                                         
#>  1 cli_markup_support default "supports cli's [inline markup][cli::inline-markup]"                                                          
#>  2 date               default "a [date][base::Date]"                                                                                        
#>  3 dates              default "a vector of [dates][base::Date]"                                                                             
#>  4 datetime           default "a [datetime][base::DateTimeClasses]"                                                                         
#>  5 datetimes          default "a vector of [datetimes][base::DateTimeClasses]"                                                              
#>  6 dbi_connection     default "an S4 object that inherits from [`DBI::DBIConnection`][DBI::DBIConnection-class]"                            
#>  7 df_or_tibble       default "a data frame, [tibble][tibble::tbl_df] or tibble extension like [`dbplyr::tbl_lazy`]"                        
#>  8 dm                 default "a [data model][dm::dm] object"                                                                               
#>  9 dyn_dots_support   default "[dynamic dots][rlang::dyn-dots] are supported"                                                               
#> 10 end_date           default "end of the period the data covers. A [date][base::Date] or a character scalar in the format `\"YYYY-MM-DD\"`"
#> # ℹ 27 more rows
```
