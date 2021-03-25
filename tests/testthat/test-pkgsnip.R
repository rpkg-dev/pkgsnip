test_that("All roxygen2 tag label names are unique", {

  # all names of NA-type labels must be unique
  expect_false(roxy_labels() %>%
                 dplyr::filter(is.na(type)) %$%
                 name %>%
                 duplicated() %>%
                 any())

  # all param labels must be unique
  expect_false(roxy_labels(type = "param") %>%
                 dplyr::filter(!is.na(type)) %$%
                 name %>%
                 duplicated() %>%
                 any())

  # all return labels must be unique
  expect_false(roxy_labels(type = "return") %>%
                 dplyr::filter(!is.na(type)) %$%
                 name %>%
                 duplicated() %>%
                 any())
})

test_that("All Markdown snippet names are unique", {

  expect_false(any(duplicated(md_snips()$name)))
})

test_that("All R condition message names are unique", {

  expect_false(any(duplicated(msgs()$name)))
})

test_that("All common abbreviations are unique", {

  expect_false(abbreviations() %>%
                 as.list() %>%
                 purrr::map_lgl(~ any(duplicated(.x))) %>%
                 any())
})
