#' Codon identifier
#'
#' Identifies codons from inputted RNA sequence. 
#'
#' @format Function
#'
#' @param RNA_seq RNA sequence string.
#' @param start First position in reading frame.
#'
#' @return
#' @export
#'
codon_iden <- function(RNA_seq, start = 1){ 
  len_seqs <- nchar(RNA_seq) #count characters in input string
  codons <- substring(RNA_seq,
                      first = seq(from = start, to = len_seqs-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len_seqs, by = 3)) #count number of codons in input string
  return(codons) 
}



