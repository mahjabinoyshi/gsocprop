test_that("submit_proposal returns logical scalar", {
  expect_type(submit_proposal(), "logical")
  expect_length(submit_proposal(), 1)
})
