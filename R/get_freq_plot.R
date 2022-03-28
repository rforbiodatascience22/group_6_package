#'Generate frequency plot
#'
#'Takes amino acid sequence as input, counts instances of amino acids and 
#'generates a frequency plot.
#'
#' @param aa_seq An Amino acid sequence as string.
#' 
#' @return A frequency plot
#' @export
#'
#' @importFrom magrittr %>%
get_freq_plot <- function(aa_seq){
  #aa_seq <- stringr::str_match(aa_seq, "[\\w\\_]+")
  # Generates a list of unique amino acids present in input string.
  aa_unique <- aa_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()
  
  # Counts instances of unique amino acids.
  counts <- sapply(aa_unique, function(aa_ref) stringr::str_count(string = aa_seq, pattern =  aa_ref)) %>%
    as.data.frame()
  
  # Change column and row names in data frame.
  colnames(counts) <- c("Counts")
  counts[["Amino_acids"]] <- rownames(counts)
  
  # Generate frequency plot using ggplot2.
  freq_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Amino_acids, y = Counts, fill = Amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()
  
  return(freq_plot)
}
