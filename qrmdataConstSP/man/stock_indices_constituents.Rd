\name{stock_indices_constituents}
\alias{SP500_const}
\alias{SP500_const_info}
\docType{data}
\title{Stock Index Constituents Data}
\description{
  Constituent data of the S\&P 500.
}
\usage{
data("SP500_const")
}
\format{
  An \code{\link{xts}} object containing adjusted close prices of the
  S\&P 500 constituents (\code{SP500_const} with corresponding
  Global Industry Classification Standard (GICS) information
  \code{SP500_const_info}; see
  \url{https://en.wikipedia.org/wiki/List_of_S\%26P_500_companies})
  as of 2015-10-12.

  The constituents data ranges from 1980-01-02 (with missing
  data if not available) to 2015-12-31.
}
\source{
  The data was obtained from the respective URL
  on 2016-01-03 via the function \code{\link[qrmtools]{get_data}()}
  from \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("SP500_const")
}
\keyword{datasets}