# Get predefined Markdown snippet

Returns a predefined Markdown snippet.

## Usage

``` r
md_snip(id = data_md_snips$id, env = parent.frame(), ...)
```

## Arguments

- id:

  Snippet identifier. One of `"funky_config"`,
  `"opt_global_max_cache_age"`, `"pkg_required"`, `"pkg_usage"`,
  `"pkgdown_site"` or `"rstudio_addin"`.

- env:

  Environment in which inline code is to be evaluated, e.g.
  [`base::parent.frame()`](https://rdrr.io/r/base/sys.parent.html),
  [`base::new.env()`](https://rdrr.io/r/base/environment.html), or
  [`base::globalenv()`](https://rdrr.io/r/base/environment.html).

- ...:

  Further named arguments used to tailor the snippet to your needs. Not
  all snippets require additional arguments, see
  [`data_md_snips`](https://pkgsnip.rpkg.dev/dev/reference/data_md_snips.md)
  for an overview. If a required argument is not explicitly provided, it
  is searched for in the [parent
  frames](https://rdrr.io/r/base/sys.parent.html).

## Value

A character scalar.

## Details

Currently, the following Markdown snippets are available:

|                            |               |
|----------------------------|---------------|
| **id**                     | **arguments** |
| `funky_config`             | `pkg`         |
| `opt_global_max_cache_age` |               |
| `pkg_required`             | `pkg`         |
| `pkg_usage`                |               |
| `pkgdown_site`             |               |
| `rstudio_addin`            |               |

Note that the `pkg` argument defaults to the name of the package from
which this function is called (`NULL` if not run within a package
environment).

## See also

Markdown snippet functions:
[`data_md_snips`](https://pkgsnip.rpkg.dev/dev/reference/data_md_snips.md)

## Examples

``` r
pkgsnip::md_snip(id = "rstudio_addin") |> cat()
#> This function is registered as an [RStudio add-in](https://rstudio.github.io/rstudioaddins/), allowing RStudio users to assign a [custom shortcut](https://support.posit.co/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts-in-the-RStudio-IDE) to it and to invoke it from the [command palette](https://posit.co/blog/rstudio-1-4-a-quick-tour/#command-palette-shortcuts).

# certain snips require additional args
pkgsnip::md_snip(id = "funky_config",
                 pkg = "foo") |>
  cat()
#> Some of foo's functionality is controlled via package-specific global configuration which can either be set via [R options](https://rdrr.io/r/base/options.html) or [environment variables](https://en.wikipedia.org/wiki/Environment_variable) (the former take precedence). This configuration includes:
```
