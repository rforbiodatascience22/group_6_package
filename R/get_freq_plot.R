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
name_me1 <- function(name_me2){
  
  # Generates a list of unique amino acids present in input string.
  name_me3 <- name_me2 %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()
  
  # Counts instances of unique amino acids.
  counts <- sapply(name_me3, function(name_me4) stringr::str_count(string = name_me2, pattern =  name_me4)) %>%
    as.data.frame()
  
  # Change column and row names in data frame.
  colnames(counts) <- c("Counts")
  counts[["Name_me2"]] <- rownames(counts)
  
  # Generate frequency plot using ggplot2.
  name_me5 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Name_me2, y = Counts, fill = Name_me2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()
  
  return(name_me5)
}
