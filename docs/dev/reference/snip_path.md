# Get R Markdown snippet file path

Returns the file path to an R Markdown snippet shipped with this
package.

## Usage

``` r
snip_path(id = ls_file_snips()$id)
```

## Arguments

- id:

  Snippet identifier. One of

  - `"_common.Rmd"`

  - `"funky-config.Rmd"`

  - `"pkg-code-style.Rmd"`

  - `"pkg-deepwiki.Rmd"`

  - `"pkg-desc.Rmd"`

  - `"pkg-instl-dev-gitlab.Rmd"`

  - `"pkg-instl-dev.Rmd"`

  - `"pkgpurl.Rmd"`

## Value

A [path](https://fs.r-lib.org/reference/fs_path.html).

## Details

The snippets can be used anywhere R Markdown input is supported. For
example, you can use them as input to knitr's [`child` document
option](https://yihui.org/knitr/options/#child-documents):

    ```{r, child = pkgsnip::snip_path("pkg-instl-dev-gitlab.Rmd")}
    ```

Or you can use them in roxygen2's [`@includeRmd`
tag](https://roxygen2.r-lib.org/articles/rd.html#including-external--rmd-md-files):

    #' @includeRmd `r pkgsnip::snip_path("pkg-instl-dev-gitlab.Rmd")`

## See also

R Markdown file snippet functions:
[`ls_file_snips()`](https://pkgsnip.rpkg.dev/dev/reference/ls_file_snips.md)
