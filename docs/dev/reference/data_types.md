# Type hints

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with all R object type hints together with their `id`. The latter can be
fed to [`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md).

## Usage

``` r
data_types
```

## Format

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with the columns `id`, `value`, and `is_scalar`.

## See also

roxygen2 label functions:
[`data_roxy_lbls`](https://pkgsnip.rpkg.dev/dev/reference/data_roxy_lbls.md),
[`description_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/description_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::data_types
#> # A tibble: 11 × 3
#>    id      value                                               is_scalar
#>    <chr>   <chr>                                               <lgl>    
#>  1 chr     [`character({length})`][base::character]            TRUE     
#>  2 date    [`Date`][base::Date]                                FALSE    
#>  3 df      [`data.frame`][base::data.frame]                    FALSE    
#>  4 fct     [`factor`][base::factor]                            FALSE    
#>  5 int     [`integer({length})`][base::integer]                TRUE     
#>  6 lgl     [`logical({length})`][base::logical]                TRUE     
#>  7 list    [`list()`][base::list]                              FALSE    
#>  8 mat     [`matrix()`][base::matrix]                          FALSE    
#>  9 num     [`numeric({length})`][base::numeric]                TRUE     
#> 10 pg_conn [`PqConnection`][RPostgres::dbGetInfo_PqConnection] FALSE    
#> 11 raw     [`raw({length})`][base::raw]                        TRUE     
```
