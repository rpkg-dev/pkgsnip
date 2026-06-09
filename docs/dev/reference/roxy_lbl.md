# Get predefined roxygen2 tag label

Returns a predefined label intended to be used to document functions
using
[roxygen2](https://roxygen2.r-lib.org/reference/roxygen2-package.html)
[tags](https://roxygen2.r-lib.org/articles/rd.html#functions).

## Usage

``` r
roxy_lbl(
  id = roxy_lbls()$id,
  type = "default",
  as_sentence = TRUE,
  env = parent.frame(),
  ...
)
```

## Arguments

- id:

  Label identifier. See
  [`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md)
  for possible values.

- type:

  The label type to return the label value for. One of `"default"`,
  `"author"`, `"concept"`, `"description"`, `"details"`, `"field"`,
  `"format"`, `"keywords"`, `"param"`, `"references"`, `"return"`,
  `"section"`, `"seealso"`, `"slot"`, `"source"` or `"title"`.

- as_sentence:

  Whether or not to format the resulting string as a full sentence, i.e.
  with the first letter capitalized and a period at the end.

- env:

  Environment in which inline code is to be evaluated, e.g.
  [`base::parent.frame()`](https://rdrr.io/r/base/sys.parent.html),
  [`base::new.env()`](https://rdrr.io/r/base/environment.html), or
  [`base::globalenv()`](https://rdrr.io/r/base/environment.html).

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

The labels can be inserted using [inline R
code](https://roxygen2.r-lib.org/articles/reuse.html#inline-code) as
follows:

    #' @param start_date `r pkgsnip::roxy_lbl("start_date", type = "param")`
    #' @return `r pkgsnip::roxy_lbl("tibble", type = "return")`

Note that the above only works in [roxygen2
7.1.0+](https://www.tidyverse.org/blog/2020/03/roxygen2-7-1-0/).

## See also

roxygen2 label functions:
[`data_roxy_lbls`](https://pkgsnip.rpkg.dev/dev/reference/data_roxy_lbls.md),
[`data_types`](https://pkgsnip.rpkg.dev/dev/reference/data_types.md),
[`description_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/description_lbl.md),
[`param_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/param_lbl.md),
[`return_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/return_lbl.md),
[`roxy_lbls()`](https://pkgsnip.rpkg.dev/dev/reference/roxy_lbls.md),
[`title_lbl()`](https://pkgsnip.rpkg.dev/dev/reference/title_lbl.md),
[`type()`](https://pkgsnip.rpkg.dev/dev/reference/type.md)

## Examples

``` r
pkgsnip::roxy_lbl(id = "cli_markup_support")
#> Supports cli's [inline markup][cli::inline-markup].

# some labels take additional arguments
pkgsnip::roxy_lbl(id = "opt_global_max_cache_age",
                  global_max_cache_age = "6h",
                  pkg = "foo")
#> Note that [on package load][base::ns-hooks], the cache will be cleared from entries exceeding a global maximum timespan set by the \R [option][base::options()] `foo.global_max_cache_age` (defaults to `6h` if unset).

# note that the `pkg` argument always defaults to the current package
# (none if run from the global environment)
pkgsnip::roxy_lbl(id = "opt_global_max_cache_age",
                  global_max_cache_age = "6h")
#> Note that [on package load][base::ns-hooks], the cache will be cleared from entries exceeding a global maximum timespan set by the \R [option][base::options()] `.global_max_cache_age` (defaults to `6h` if unset).
```
