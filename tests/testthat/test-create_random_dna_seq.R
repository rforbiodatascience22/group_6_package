test_that("String has correct length", {
  expect_equal(10, nchar(create_random_dna_seq(10)))
})

test_that("String only has bases", {
  expect_match(create_random_dna_seq(100), "[ACTG]+")
})