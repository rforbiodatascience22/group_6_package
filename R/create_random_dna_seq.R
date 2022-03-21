#' Create random DNA seq
#' 
#' Lets the user create a string of a randomized DNA-sequence.
#'
#' @param seq_length a positive integer indicating the length of the desired DNA sequence
#'
#' @return A random DNA sequence as string with length \code{seq_length}.
#' @export
#'
create_random_dna_seq <- function(seq_length){
  dna_seq_vector <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  dna_seq_string <- paste0(dna_seq_vector, collapse = "")
  return(dna_seq_string)
}