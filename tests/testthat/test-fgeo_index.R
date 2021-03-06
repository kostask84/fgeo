context("fgeo_index.R")

test_that("indexing functions output a dataframe", {
  expect_type(fgeo_index_functions(), "list")
  expect_true(has_class(fgeo_index_functions(), "data.frame"))

  expect_type(fgeo_index_packages(), "list")
  expect_true(has_class(fgeo_index_packages(), "data.frame"))
})

test_that("Reexported objects aren't indexed", {
  pipe_is_not_indexed <- any(grepl("%>%", fgeo_index_functions()$fun))
  expect_false(pipe_is_not_indexed)

  pipe_is_indexed <- any(
    grepl("%>%", fgeo_index_functions(keep_reexported = TRUE)$fun)
  )
  expect_true(pipe_is_indexed)
})

test_that("datasets are indexed", {
  expect_type(fgeo_index_datasets(), "list")
  expect_true(has_class(fgeo_index_datasets(), "data.frame"))
})
