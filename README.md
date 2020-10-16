# pkgsnip: Provides Handy (R) Markdown Snippets for Package Authors

pkgsnip ships ready-to-go (R) Markdown snippets and labels intended to be used in roxygen2 documentation or as knitr child documents. Also included are some predefined R condition messages and a table of abbreviations commonly used in R code. All of them are designed to reduce unnecessary repetition and instead standardize R-package documentation wherever possible.

## Details

### R Markdown file snippets

The (R) Markdown file snippets can be used anywhere [(R) Markdown](https://rmarkdown.rstudio.com/) input is supported. For example, you can use them as input to [knitr](https://yihui.org/knitr/)’s [`child` document option](https://yihui.org/knitr/options/#child-documents):

    ```{r, child = pkgsnip::snip_path("installation-notice_dev-version_gitlab.Rmd")}
    ```

When inserting snippets that require the name of the calling package like `"installation-notice_dev-version_gitlab.Rmd"`, you should either use `pal::build_readme()` to build the `.Rmd` file or manually assign `pkg_metadata <- desc::desc_get(desc::desc_fields())` to the environment passed to [`devtools::build_rmd()`](https://devtools.r-lib.org/reference/build_rmd.html) or its `...` argument respectively.

You can also use the snippets in [roxygen2](https://roxygen2.r-lib.org/)’s [`@includeRmd` tag](https://roxygen2.r-lib.org/articles/rd.html#including-external--rmd-md-files):

``` rd
#' @includeRmd `r pkgsnip::snip_path("rmd-package-notice.Rmd")`
```

For snippets that require the name of the calling package, just assign `pkg_metadata` (once) before inserting the snippet(s), e.g. like this:

``` rd
#' `r pkg_metadata <- desc::desc_get(desc::desc_fields())`
#'
#' @includeRmd `r pkgsnip::snip_path("installation-notice_dev-version.Rmd")`
```

#### Included Snippets

Currently, the following R Markdown file snippets are included:

-   [`coding-style-notice.Rmd`](inst/snippets/coding-style-notice.Rmd)
-   [`installation-notice_dev-version.Rmd`](inst/snippets/installation-notice_dev-version.Rmd)
-   [`installation-notice_dev-version_gitlab.Rmd`](inst/snippets/installation-notice_dev-version_gitlab.Rmd)
-   [`rmd-package-notice.Rmd`](inst/snippets/rmd-package-notice.Rmd)

### roxygen2 tag labels

The [roxygen2](https://roxygen2.r-lib.org/) tag labels are specifically meant for [`@`-tag](https://roxygen2.r-lib.org/articles/rd.html)-based documentation using [dynamic R code](https://roxygen2.r-lib.org/articles/rd-formatting.html#dynamic-r-code-1).

Insert them in your functions using inline R code, e.g. as follows

``` r
#' @param use_cache `r pkgsnip::param_label("use_cache")`
#' @param cache_lifespan `r pkgsnip::param_label("cache_lifespan")`
#' @return `r pkgsnip::return_label("data")`
```

which will result in

``` r
#' @param use_cache Return cached results if possible. If `FALSE`, results are always newly fetched regardless of `cache_lifespan`.
#' @param cache_lifespan The duration after which cached results are refreshed (i.e. newly fetched). A valid [lubridate duration][lubridate::as.duration]. Only relevant if `use_cache = TRUE`.
#' @return A [tibble][tibble::tbl_df].
```

### R condition messages

These are meant to be used as message texts for base R’s [`message()`](https://rdrr.io/r/base/message.html), [`warning()`](https://rdrr.io/r/base/warning.html) and [`stop()`](https://rdrr.io/r/base/stop.html) functions or [`rlang::inform()`, `rlang::warn()` and `rlang::abort()`](https://rlang.r-lib.org/reference/abort.html) from the tidyverse respectively.

A message can be retrieved using `pkgsnip::msg()`. For some of the messages, arguments need to be provided so they can be tailored to their specific purpose. For example, the `pkg_required` message requires the `pkg` argument:

``` r
pkgsnip::msg(name = "pkg_required",
             pkg = "some_pkg")
```

Which results in the following message text:

    To be able to use this function, the package 'some_pkg' is required but it is not installed. Please install it and then try again.

Currently, the following R condition messages are included:

| **name**       | **message**                                                                                                                     | **arguments** |
|:---------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------|
| `pkg_required` | To be able to use this function, the package ‘{pkg}’ is required but it is not installed. Please install it and then try again. | `pkg`         |

### Common abbreviations

Finally, there’s a table included that lists an (opinionated) set of abbreviations commonly used when writing R code. It might come in handy as a reference, for example, to check availability when considering using some abbreviation in a function or argument name.

The table can be retrieved by calling `pkgsnip::abbreviations()` and currently looks as follows:

| full_expression            | abbreviation |
|:---------------------------|:-------------|
| absolute                   | abs          |
| argument                   | arg          |
| arguments                  | args         |
| bibliography               | bib          |
| character                  | chr          |
| characters                 | chrs         |
| column                     | col          |
| columns                    | cols         |
| command                    | cmd          |
| commands                   | cmds         |
| combination                | combo        |
| combinations               | combos       |
| condition                  | cnd          |
| conditions                 | cnds         |
| configuration              | config       |
| configurations             | configs      |
| database                   | db           |
| dataframe                  | df           |
| difference                 | diff         |
| differences                | diffs        |
| directory                  | dir          |
| directories                | dirs         |
| distribution               | distro       |
| distributions              | distros      |
| document                   | doc          |
| documents                  | docs         |
| double                     | dbl          |
| doubles                    | dbls         |
| element                    | el           |
| environment                | env          |
| environments               | envs         |
| exclude                    | excl         |
| expression                 | expr         |
| expressions                | exprs        |
| factor                     | fct          |
| factors                    | fcts         |
| filesystem                 | fs           |
| function                   | fn           |
| functions                  | fns          |
| generation, generate       | gen          |
| generations                | gens         |
| identifier                 | id           |
| identifiers                | ids          |
| include                    | incl         |
| index                      | i            |
| indices/indexes            | ix           |
| information                | info         |
| initialization, initialize | init         |
| integer                    | int          |
| integers                   | ints         |
| label                      | lbl          |
| labels                     | lbls         |
| language                   | lang         |
| languages                  | langs        |
| level                      | lvl          |
| levels                     | lvls         |
| list                       | ls           |
| logical                    | lgl          |
| logicals                   | lgls         |
| Markdown                   | md           |
| message                    | msg          |
| messages                   | msgs         |
| modification               | mod          |
| modifications              | mods         |
| number                     | nr           |
| numbers                    | nrs          |
| number of                  | n            |
| object                     | obj          |
| objects                    | objs         |
| option                     | opt          |
| options                    | opts         |
| package                    | pkg          |
| packages                   | pkgs         |
| parameter                  | param        |
| parameters                 | params       |
| R Markdown                 | rmd          |
| reference                  | ref          |
| references                 | refs         |
| regular expression(s)      | regex        |
| relative                   | rel          |
| remove                     | rm           |
| roxygen2                   | roxy         |
| separator                  | sep          |
| separators                 | seps         |
| sequence , sequential      | seq          |
| sequences                  | seqs         |
| temporary                  | temp         |
| value                      | val          |
| values                     | vals         |
| variable                   | v            |
| variables                  | vx           |
| vector                     | vctr         |
| vectors                    | vctrs        |

## Installation

To install the latest development version of pkgsnip, run the following in R:

``` r
if (!("remotes" %in% rownames(installed.packages()))) {
  install.packages(pkgs = "remotes",
                   repos = "https://cloud.r-project.org/")
}

remotes::install_gitlab(repo = "salim_b/r/pkgs/pkgsnip")
```

## Development

### R Markdown format

This package’s source code is written in the [R Markdown](https://rmarkdown.rstudio.com/) file format to facilitate practices commonly referred to as [*literate programming*](https://en.wikipedia.org/wiki/Literate_programming). It allows the actual code to be freely mixed with explanatory and supplementary information in expressive Markdown format instead of having to rely on [`#` comments](https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Comments) only.

All the `-GEN.R` suffixed R source code found under [`R/`](R/) is generated from the respective R Markdown counterparts under [`Rmd/`](Rmd/) using [`pkgpurl::purl_rmd()`](https://gitlab.com/salim_b/r/pkgs/pkgpurl/)[^1]. Always make changes only to the `.Rmd` files – never the `.R` files – and then run `pkgpurl::purl_rmd()` to regenerate the R source files.

### Coding style

This package borrows a lot of the [Tidyverse](https://www.tidyverse.org/) design philosophies. The R code adheres to the principles specified in the [Tidyverse Design Guide](https://principles.tidyverse.org/) wherever possible and is formatted according to the [Tidyverse Style Guide](https://style.tidyverse.org/) (TSG) with the following exceptions:

-   Line width is limited to **160 characters**, double the [limit proposed by the TSG](https://style.tidyverse.org/syntax.html#long-lines) (80 characters is ridiculously little given today’s high-resolution wide screen monitors).

-   Usage of [magrittr’s compound assignment pipe-operator `%<>%`](https://magrittr.tidyverse.org/reference/compound.html) is desirable[^2].

-   Usage of [R’s right-hand assignment operator `->`](https://rdrr.io/r/base/assignOps.html) is not allowed[^3].

-   R source code is *not* split over several files as [suggested by the TSG](https://style.tidyverse.org/package-files.html) but instead is (as far as possible) kept in the single file [`Rmd/pkgsnip.Rmd`](Rmd/pkgsnip.Rmd) which is well-structured thanks to its [Markdown support](#r-markdown-format).

As far as possible, these deviations from the TSG plus some additional restrictions are formally specified in the [lintr configuration file](https://github.com/jimhester/lintr#project-configuration) [`.lintr`](.lintr), so lintr can be used right away to check for formatting issues:

``` r
pkgpurl::lint_rmd()
```

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[^1]: This naming convention as well as the very idea to leverage the R Markdown format to author R packages was originally proposed by Yihui Xie. See his excellent [blog post](https://yihui.name/rlp/) for more detailed information about the benefits of literate programming techniques and some practical examples. Note that using `pkgpurl::purl_rmd()` is a less cumbersome alternative to the Makefile approach outlined by him.

[^2]: The TSG [explicitly instructs to avoid this operator](https://style.tidyverse.org/pipes.html#assignment-1) – presumably because it’s relatively unknown and therefore might be confused with the forward pipe operator `%>%` when skimming code only briefly. I don’t consider this to be an actual issue since there aren’t many sensible usage patterns of `%>%` at the beginning of a pipe sequence inside a function – I can only think of creating side effects and relying on [R’s implicit return of the last evaluated expression](https://rdrr.io/r/base/function.html). Therefore – and because I really like the `%<>%` operator – it’s usage is welcome.

[^3]: The TSG [explicitly accepts `->` for assignments at the end of a pipe sequence](https://style.tidyverse.org/pipes.html#assignment-1) while Google’s R Style Guide [considers this bad practice](https://google.github.io/styleguide/Rguide.html#right-hand-assignment) because it “makes it harder to see in code where an object is defined”. I second the latter.
