test_that("All roxygen2 tag label names are unique", {

  # all names of NA-type labels must be unique
  roxy_lbls() |>
    dplyr::filter(is.na(type)) %$%
    id |>
    duplicated() |>
    any() |>
    expect_false()

  # all labels of specific type must be unique
  base::formals(roxy_lbls) %$%
    type |>
    eval() |>
    setdiff(c("any", NA_character_)) |>
    purrr::walk(\(type) {

      roxy_lbls(type = type) |>
        dplyr::filter(!is.na(type)) %$%
        id |>
        duplicated() |>
        any() |>
        expect_false()
    })
})

test_that("All Markdown snippet names are unique", {

  expect_false(any(duplicated(data_md_snips$id)))
})

test_that("All common abbreviations are unique", {

  abbrs() |>
    as.list() |>
    purrr::map_lgl(\(x) any(duplicated(x))) |>
    any() |>
    expect_false()
})
