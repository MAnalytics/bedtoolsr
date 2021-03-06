% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bt.annotate.R
\name{bt.annotate}
\alias{bt.annotate}
\title{Annotates the depth & breadth of coverage of features from mult. files
on the intervals in -i.}
\usage{
bt.annotate(i, files, names = NULL, counts = NULL, both = NULL,
  s = NULL, S = NULL, output = NULL)
}
\arguments{
\item{i}{<bed/gff/vcf>}

\item{files}{FILE1 FILE2..FILEn}

\item{names}{A list of names (one / file) to describe each file in -i.
These names will be printed as a header line.}

\item{counts}{Report the count of features in each file that overlap -i.
- Default is to report the fraction of -i covered by each file.}

\item{both}{Report the counts followed by the  percent coverage.
- Default is to report the fraction of -i covered by each file.}

\item{s}{Require same strandedness.  That is, only counts overlaps
on the _same_ strand.
- By default, overlaps are counted without respect to strand.}

\item{S}{Require different strandedness.  That is, only count overlaps
on the _opposite_ strand.
- By default, overlaps are counted without respect to strand.}

\item{output}{Output filepath instead of returning output in R.}
}
\description{
Annotates the depth & breadth of coverage of features from mult. files
on the intervals in -i.
}
