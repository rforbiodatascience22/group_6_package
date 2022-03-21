test_that("String has correct length", {
  expect_equal(nchar("AGGTCCATTAGC"), nchar(convert_dna_to_rna("AGGTCCATTAGC")))
})

test_that("String only has bases", {
  expect_match(convert_dna_to_rna("AGGTCCATTAGC"), "[ACUG]+")
})
