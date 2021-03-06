% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bt.getfasta.R
\name{bt.getfasta}
\alias{bt.getfasta}
\title{Extract DNA sequences from a fasta file based on feature coordinates.}
\usage{
bt.getfasta(fi, bed, fo = NULL, name = NULL, nameplus = NULL,
  split = NULL, tab = NULL, s = NULL, fullHeader = NULL,
  output = NULL)
}
\arguments{
\item{fi}{<fasta>}

\item{bed}{<bed/gff/vcf>}

\item{fo}{Output file (opt., default is STDOUT}

\item{name}{Use the name field for the FASTA header}

\item{nameplus}{Use the name field and coordinates for the FASTA header}

\item{split}{given BED12 fmt., extract and concatenate the sequences
from the BED "blocks" (e.g., exons)}

\item{tab}{Write output in TAB delimited format.
- Default is FASTA format.}

\item{s}{Force strandedness. If the feature occupies the antisense,
strand, the sequence will be reverse complemented.
- By default, strand information is ignored.}

\item{fullHeader}{Use full fasta header.
- By default, only the word before the first space or tab 
is used.}

\item{output}{Output filepath instead of returning output in R.}
}
\description{
Extract DNA sequences from a fasta file based on feature coordinates.
}
