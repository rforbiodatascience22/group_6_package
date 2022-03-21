#' Translate codons to Amino Acis
#' 
#' Takes a vector with codons, and translate to amino acids according to \code{codon_table}
#'
#' @param codons A vector with codons
#'
#' @return A string with amino acids
#' @export
#'
translate_codon <- function(codons){
  aa_seq <- paste0(codon_table[codons], collapse = "")
  return(aa_seq)
}