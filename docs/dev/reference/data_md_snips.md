# Markdown snippets

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with all Markdown snippets together with their `id`. The latter can be
fed to [`md_snip()`](https://pkgsnip.rpkg.dev/dev/reference/md_snip.md).

## Usage

``` r
data_md_snips
```

## Format

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
with the columns `id` and `value`.

## See also

Markdown snippet functions:
[`md_snip()`](https://pkgsnip.rpkg.dev/dev/reference/md_snip.md)

## Examples

``` r
pkgsnip::data_md_snips
#> # A tibble: 6 × 2
#>   id                       value                                                                                                                                
#>   <chr>                    <chr>                                                                                                                                
#> 1 funky_config             "Some of { if (exists('pkg')) pkg else utils::packageName() }'s functionality is controlled via package-specific global configuratio…
#> 2 opt_global_max_cache_age "Maximal timespan to preserve the package's [pkgpins](https://pkgpins.rpkg.dev/) cache. Cache entries older than this will be delete…
#> 3 pkg_required             "To be able to use this function, the package '{ if (exists('pkg')) pkg else utils::packageName() }' is required but it is not insta…
#> 4 pkg_usage                "{ pkg_intro_vignette <- stringr::str_replace_all(desc::desc_get_field('Package'), '\\\\.', '-'); if (fs::file_exists(fs::path('vign…
#> 5 pkgdown_site             "The documentation of this package is found [here]({ ''; pkgdown::as_pkgdown()$meta$url })."                                         
#> 6 rstudio_addin            "This function is registered as an [RStudio add-in](https://rstudio.github.io/rstudioaddins/), allowing RStudio users to assign a [c…
```
