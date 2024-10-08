% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy.R
\name{tidy.cpm}
\alias{tidy.cpm}
\title{Tidy a \code{cpm} object}
\usage{
\method{tidy}{cpm}(x, ..., component = c("performance", "edges"))
}
\arguments{
\item{x}{A \code{cpm} object.}

\item{...}{Additional arguments passed to \code{summary()}.}

\item{component}{A character vector indicating the component to tidy.}
}
\value{
A \link[tibble:tibble-package]{tibble} with columns storing parameters of the
\code{\link[=cpm]{cpm()}} object and further columns depending on the \code{component} argument:

For \code{component = "performance"}:

\item{method}{The method used to calculate the correlation between the real
and predicted values.}

\item{pos}{The correlation between the real and predicted values for
positive edges.}

\item{neg}{The correlation between the real and predicted values for
negative edges.}

For \code{component = "edges"}:

\item{level}{The proportional threshold for edge selection.}

\item{pos}{A logical vector indicating whether each edge is selected based
on the edge_level (positive).}

\item{neg}{A logical vector indicating whether each edge is selected based
on the edge_level (negative).}
}
\description{
Tidy a \code{cpm} object
}
