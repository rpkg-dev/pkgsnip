% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkgsnip.gen.R
\name{abbrs}
\alias{abbrs}
\title{Commonly used abbreviations in \R code}
\usage{
abbrs(unnest = FALSE)
}
\arguments{
\item{unnest}{Whether to unnest the \code{full_expression} column and return the data in long format. If \code{FALSE}, a "nested" list column \code{full_expressions} will
be returned, meaning the values in column \code{abbreviation} will be unique.}
}
\value{
A \link[tibble:tbl_df-class]{tibble}.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} listing an opinionated set of abbreviations commonly used when writing \R code. It can be used as a reference, for
example, to check availability/consistency when considering using some abbreviation in a function or argument name.
}
\details{
To avoid the list getting excessively long and redundant, \strong{the main focus is on verbs and nouns}. Adjectives and adverbs are only listed in column
\code{full_expression} when there's not already a verb or noun with the same root word listed for a particular \code{abbreviation}. That means that e.g. the
abbreviation "seq" could also stand for the full expressions "sequential" or "sequentially", despite the fact that it is not explicitly listed but merely the
verb/noun "sequence" is.
}
\section{Motivation}{
To quote \href{https://twitter.com/secretGeek/status/7269997868}{Leon Bambrick}:

\emph{"There are 2 hard problems in computer science: cache invalidation, \strong{naming things}, and off-by-1 errors."}
}

\examples{
pkgsnip::abbrs(unnest = TRUE) |> print(n = Inf)
}
