test_that("has no spaces, dots or commas", {
  expect_no_match(translate_codons(c("ACU","AGU","CUG","GUC")), "[.,\\s]+")
})
