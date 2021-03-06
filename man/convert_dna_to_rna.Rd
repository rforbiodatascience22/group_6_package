% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_dna_to_rna.R
\name{convert_dna_to_rna}
\alias{convert_dna_to_rna}
\title{Convert DNA string to RNA string}
\usage{
convert_dna_to_rna(dna_str)
}
\arguments{
\item{dna_str}{A DNA sequence of abitrary length.}
}
\value{
A RNA string identical to \code{dna_str}, except substituted T's.
}
\description{
T's in a DNA string are substituted for U's.
This means no reverse translation takes place.
}
