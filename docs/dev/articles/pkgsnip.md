# Introduction to pkgsnip

In the following, an overview is given of what’s included in this
package.

## R Markdown file snippets

The (R) Markdown file snippets can be used anywhere [(R)
Markdown](https://rmarkdown.rstudio.com/) input is supported. For
example, you can use them as input to
[knitr](https://yihui.org/knitr/)’s [`child` document
option](https://yihui.org/knitr/options/#child-documents):

    ```{r, child = pkgsnip::snip_path("pkg-instl-dev-gitlab.Rmd")}
    ```

When inserting snippets that require the name of the calling package
like `"pkg-instl-dev-gitlab.Rmd"`, you should either use
[`pal::build_readme()`](https://pal.rpkg.dev/reference/build_readme.html)
to build the `.Rmd` file or manually assign
`pkg_metadata <- pal::desc_list()` to the environment passed to
[`devtools::build_rmd()`](https://devtools.r-lib.org/reference/build_rmd.html)
or its `...` argument respectively.

You can also use the snippets in
[roxygen2](https://roxygen2.r-lib.org/)’s [`@includeRmd`
tag](https://roxygen2.r-lib.org/articles/rd.html#including-external--rmd-md-files):

``` rd
#' @includeRmd `r pkgsnip::snip_path("pkgpurl.Rmd")`
```

For snippets that require the name of the calling package, just assign
`pkg_metadata` (once) before inserting the snippet(s), e.g. like this:

``` rd
#' `r pkg_metadata <- pal::desc_list()`
#'
#' @includeRmd `r pkgsnip::snip_path("pkg-instl-dev.Rmd")`
```

### Available snippets

Currently, the following R Markdown file snippets are included:

- [`_common.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/_common.Rmd)
- [`funky-config.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/funky-config.Rmd)
- [`pkg-code-style.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkg-code-style.Rmd)
- [`pkg-deepwiki.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkg-deepwiki.Rmd)
- [`pkg-desc.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkg-desc.Rmd)
- [`pkg-instl-dev-gitlab.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkg-instl-dev-gitlab.Rmd)
- [`pkg-instl-dev.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkg-instl-dev.Rmd)
- [`pkgpurl.Rmd`](https://gitlab.com/rpkg.dev/pkgsnip/-/tree/master/inst/snippets/pkgpurl.Rmd)

## Markdown snippets

The Markdown snippets basically serve the same purpose as the *R
Markdown file snippets* [above](#r-markdown-file-snippets), but are
geared towards shorter content and their semantics slightly differ. They
support [glue’s string interpolation](https://glue.tidyverse.org/) via
curly braces, i.e. embedded R code allows for dynamic content.

The snippets can be used in roxygen2 documentation via [inline R
code](https://roxygen2.r-lib.org/articles/reuse.html#inline-code) as
follows:

``` r

#' Awesome function title
#'
#' Awesome function description.
#'
#' `r pkgsnip::md_snip("rstudio_addin")`
```

which will result in

``` r

#' Awesome function title
#'
#' Awesome function description.
#'
#' This function is registered as an [RStudio add-in](https://rstudio.github.io/rstudioaddins/), allowing RStudio users to assign a [custom shortcut](https://support.posit.co/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts-in-the-RStudio-IDE) to it and to invoke it from the [command palette](https://posit.co/blog/rstudio-1-4-a-quick-tour/#command-palette-shortcuts).
```

### Available snippets

Currently, the following Markdown snippets are included:

| **id** | **value** |
|:---|:---|
| `funky_config` | `Some of { if (exists('pkg')) pkg else utils::packageName() }'s functionality is controlled via package-specific global configuration which can either be set via [R options](https://rdrr.io/r/base/options.html) or [environment variables](https://en.wikipedia.org/wiki/Environment_variable) (the former take precedence). This configuration includes:` |
| `opt_global_max_cache_age` | `Maximal timespan to preserve the package's [pkgpins](https://pkgpins.rpkg.dev/) cache. Cache entries older than this will be deleted upon package loading.` |
| `pkg_required` | `To be able to use this function, the package '{ if (exists('pkg')) pkg else utils::packageName() }' is required but it is not installed. Please install it and then try again.` |
| `pkg_usage` | `{ pkg_intro_vignette <- stringr::str_replace_all(desc::desc_get_field('Package'), '\\.', '-'); if (fs::file_exists(fs::path('vignettes', pkg_intro_vignette, ext = 'Rmd'))) paste0('An introduction to this package is given [here](articles/', pkg_intro_vignette, '.html). ') else '' }The (function) reference is found [here](reference).` |
| `pkgdown_site` | `The documentation of this package is found [here]({ ''; pkgdown::as_pkgdown()$meta$url }).` |
| `rstudio_addin` | `This function is registered as an [RStudio add-in](https://rstudio.github.io/rstudioaddins/), allowing RStudio users to assign a [custom shortcut](https://support.posit.co/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts-in-the-RStudio-IDE) to it and to invoke it from the [command palette](https://posit.co/blog/rstudio-1-4-a-quick-tour/#command-palette-shortcuts).` |

## roxygen2 tag labels

The [roxygen2](https://roxygen2.r-lib.org/) tag labels are specifically
meant for [`@`-tag](https://roxygen2.r-lib.org/articles/rd.html)-based
documentation using [inline R
code](https://roxygen2.r-lib.org/articles/reuse.html#inline-code).

Insert them in your functions using inline R code, e.g. as follows

``` r

#' @param use_cache `r pkgsnip::param_lbl("use_cache")`
#' @param max_cache_age `r pkgsnip::param_lbl("max_cache_age")`
#' @return `r pkgsnip::return_lbl("tibble")`
```

which will result in

``` r

#' @param use_cache Whether or not to return cached results if possible. If `FALSE`, results are always newly fetched regardless of `max_cache_age`.
#' @param max_cache_age Duration after which cached results are refreshed (i.e. newly fetched). A valid [lubridate duration][lubridate::as.duration]. Use `Inf` to disable cache expiry. Only relevant if `use_cache = TRUE`.
#' @return A [tibble][tibble::tbl_df].
```

## Common abbreviations

Finally, there’s a table included that lists an (opinionated) set of
abbreviations commonly used when writing R code. It might come in handy
as a reference, for example, to check availability when considering
using some abbreviation in a function or argument name.

The table can be retrieved by calling
[`pkgsnip::abbrs()`](https://pkgsnip.rpkg.dev/dev/reference/abbrs.md)
and currently looks as follows (click to expand):

Abbreviations

| full_expressions                        | abbreviation |
|:----------------------------------------|:-------------|
| abbreviate, abbreviation                | abbr         |
| abbreviations                           | abbrs        |
| absolute                                | abs          |
| argument                                | arg          |
| arguments                               | args         |
| attribute                               | attr         |
| attributes                              | attrs        |
| authenticate, authentication            | auth         |
| authentications                         | auths        |
| auxiliary                               | aux          |
| background                              | bg           |
| back up                                 | kbp          |
| backup                                  | bkp          |
| bibliography                            | bib          |
| bibliographies                          | bibs         |
| certify, certificate, certification     | cert         |
| certificates, certifications            | certs        |
| chapter                                 | chpt         |
| chapters                                | chpts        |
| character                               | chr          |
| characters                              | chrs         |
| column                                  | col          |
| columns                                 | cols         |
| command                                 | cmd          |
| commands                                | cmds         |
| combination                             | combo        |
| combinations                            | combos       |
| condition                               | cnd          |
| conditions                              | cnds         |
| configure, configuration                | config       |
| configurations                          | configs      |
| connection                              | conn         |
| connections                             | conns        |
| current                                 | cur          |
| database                                | db           |
| dataframe                               | df           |
| dataframes                              | dfs          |
| dataframe column                        | dfc          |
| dataframe row                           | dfr          |
| define, definition                      | def          |
| definitions                             | defs         |
| delete, deletion                        | del          |
| deletions                               | dels         |
| depend, dependency                      | dep          |
| dependencies                            | deps         |
| develop, development, developer         | dev          |
| developments, developers                | devs         |
| dictionary                              | dict         |
| dictionaries                            | dicts        |
| differentiate, difference               | diff         |
| differences                             | diffs        |
| directory                               | dir          |
| directories                             | dirs         |
| distribution                            | distro       |
| distributions                           | distros      |
| document, documentation                 | doc          |
| documents, documentations               | docs         |
| double                                  | dbl          |
| doubles                                 | dbls         |
| duplicate, duplication                  | dupl         |
| duplicates, duplications                | dupls        |
| dynamic                                 | dyn          |
| element                                 | el           |
| elements                                | els          |
| endpoint                                | ep           |
| endpoints                               | eps          |
| enumerate, enumeration                  | enum         |
| enumerations                            | enums        |
| environment                             | env          |
| environments                            | envs         |
| evaluate, evaluation                    | eval         |
| evaluations                             | evals        |
| execute, execution                      | exec         |
| executions                              | execs        |
| exclude, exclusion                      | excl         |
| expression                              | expr         |
| expressions                             | exprs        |
| extend, extension                       | ext          |
| extensions                              | exts         |
| factor                                  | fct          |
| factors                                 | fcts         |
| figure                                  | fig          |
| figures                                 | figs         |
| filesystem                              | fs           |
| foreign key                             | fk           |
| foreign keys                            | fks          |
| formula                                 | fm           |
| formulas, formulae                      | fms          |
| frequent, frequency                     | freq         |
| frequencies                             | freqs        |
| function                                | fn           |
| functions                               | fns          |
| generate, generation                    | gen          |
| generations                             | gens         |
| identify, identifier                    | id           |
| identifiers                             | ids          |
| image                                   | img          |
| images                                  | imgs         |
| include, inclusion                      | incl         |
| index                                   | i            |
| indexes, indices                        | ix           |
| information                             | info         |
| initialize, initialization              | init         |
| install, installation                   | instl        |
| integer                                 | int          |
| integers                                | ints         |
| iterate, iteration, iterator            | itr          |
| iterations, iterators                   | itrs         |
| label                                   | lbl          |
| labels                                  | lbls         |
| language                                | lang         |
| languages                               | langs        |
| left-hand side                          | lhs          |
| level                                   | lvl          |
| levels                                  | lvls         |
| library                                 | lib          |
| libraries                               | libs         |
| limit                                   | lim          |
| limits                                  | lims         |
| list                                    | ls           |
| logical                                 | lgl          |
| logicals                                | lgls         |
| management                              | mgmt         |
| Markdown                                | md           |
| matrix                                  | mat          |
| matrices                                | mats         |
| message                                 | msg          |
| messages                                | msgs         |
| modify, modification                    | mod          |
| modifications                           | mods         |
| not available                           | na           |
| not a number                            | nan          |
| number                                  | nr           |
| numbers                                 | nrs          |
| number of                               | n            |
| numeric                                 | num          |
| numerics                                | nums         |
| object                                  | obj          |
| objects                                 | objs         |
| operate, operation, operator            | op           |
| operations, operators                   | ops          |
| option                                  | opt          |
| options                                 | opts         |
| organize, organization                  | org          |
| organizations                           | orgs         |
| package                                 | pkg          |
| packages                                | pkgs         |
| parameterize, parameter                 | param        |
| parameters                              | params       |
| position                                | pos          |
| PostgreSQL                              | pg           |
| predicate                               | pred         |
| predicates                              | preds        |
| prepare, preparation                    | prep         |
| preparations                            | preps        |
| primary key                             | pk           |
| primary keys                            | pks          |
| proceed, procedure                      | prcd         |
| procedures                              | prcds        |
| projection, project                     | proj         |
| projections, projects                   | projs        |
| property                                | prop         |
| properties                              | props        |
| prototype                               | ptype        |
| prototypes                              | ptypes       |
| Quarto Markdown                         | qmd          |
| question                                | qstn         |
| questions                               | qstns        |
| questionnaire                           | qstnr        |
| questionnaires                          | qstnrs       |
| R Markdown                              | rmd          |
| refer, reference                        | ref          |
| references                              | refs         |
| referendum                              | rfrnd        |
| referendums, referenda                  | rfrnds       |
| regular expression, regular expressions | regex        |
| relative                                | rel          |
| remove, removal                         | rm           |
| repository                              | repo         |
| repositories                            | repos        |
| request                                 | req          |
| requests                                | reqs         |
| respond, response                       | resp         |
| responses                               | resps        |
| right-hand side                         | rhs          |
| roxygen2                                | roxy         |
| separate, separator                     | sep          |
| separators                              | seps         |
| sequence                                | seq          |
| sequences                               | seqs         |
| snippet                                 | snip         |
| snippets                                | snips        |
| source                                  | src          |
| sources                                 | srcs         |
| specify, specification                  | spec         |
| specifications                          | specs        |
| string                                  | str          |
| strings                                 | strs         |
| structure                               | struct       |
| structures                              | structs      |
| supplement, supplemental, supplementary | suppl        |
| symbolize, symbol                       | sym          |
| symbols                                 | syms         |
| tabulate, table                         | tbl          |
| tables                                  | tbls         |
| template                                | tpl          |
| templates                               | tpls         |
| temporary                               | tmp          |
| user interface                          | ui           |
| user experience                         | ux           |
| value                                   | val          |
| values                                  | vals         |
| variable                                | var          |
| variables                               | vars         |
| vectorize, vector                       | vctr         |
| vectors                                 | vctrs        |
| verbatim                                | verb         |
| version                                 | vrsn         |
| versions                                | vrsns        |
| working directory                       | wd           |
