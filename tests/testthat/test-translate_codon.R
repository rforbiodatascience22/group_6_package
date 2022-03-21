test_that("has no white space, dots or commas", {
  expect_no_match(translate_codon(c("ACU","AGU","CUG","GUC")), "[.,\\s]+")
})
