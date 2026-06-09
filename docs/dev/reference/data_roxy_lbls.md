# roxygen2 tag labels

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with all Markdown snippets together with their `type` and `id`. The
latter can be fed to
[`md_snip()`](https://pkgsnip.rpkg.dev/dev/reference/md_snip.md).

## Usage

``` r
data_roxy_lbls
```

## Format

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with the columns `id` and `value`.

## See also

roxygen2 label functions:
[`data_types`](https://pkgsnip.rpkg.dev/dev/reference/data_types.md),
[`description_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/description_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::data_roxy_lbls
#> # A tibble: 38 × 3
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
#> # ℹ 28 more rows
```
