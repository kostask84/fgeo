% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgeo_index.R
\name{fgeo_index}
\alias{fgeo_index}
\alias{fgeo_index_functions}
\alias{fgeo_index_packages}
\alias{fgeo_index_datasets}
\title{Index fgeo's elements.}
\usage{
fgeo_index(.f, nm, ...)

fgeo_index_functions(keep_reexported = FALSE)

fgeo_index_packages()

fgeo_index_datasets()
}
\arguments{
\item{.f}{A function to map to each core package of fgeo.}

\item{nm}{A name for the column storing the results of \code{.f}.}

\item{...}{Additional arguments passed to \code{.f}.}

\item{keep_reexported}{Logical; \code{TRUE} includes reexported functions.}
}
\value{
A dataframe.
}
\description{
\code{fgeo_index()} created a table of some component of fgeo for each core
package of fgeo. The other functions are convenient wrappers.
}
\section{Acknowledgements}{

\href{https://goo.gl/Qzp5kR}{Jim Hester adviced} on implementation details of
\code{fgeo_index_functions()}; and \href{http://bit.ly/2H8bwaj}{Nathan Werth adviced}
on implementation details of \code{fgeo_index_datasets()}. detail.
}

\examples{
head(fgeo_index_functions())
head(fgeo_index_packages())
}
