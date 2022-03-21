#' Convert DNA string to RNA string
#' 
#' T's in a DNA string are substituted for U's.
#' This means no reverse translation takes place.
#'
#' @param dna_str 
#'
#' @return A RNA string identical to \code{dna_str}, except substituted T's.
#' @export
#'
convert_dna_to_rna <- function(dna_str){
  rna_str <- gsub("T", "U", dna_str)
  return(rna_str)
}