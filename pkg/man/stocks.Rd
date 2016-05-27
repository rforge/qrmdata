\name{stock_data}
\alias{RSHCQ}
\docType{data}
\title{(Single) Stock Data}
\description{
  Single stock data; only Radioshack at the moment.
}
\usage{
data("RSHCQ")
}
\format{
  An \code{\link{xts}} object containing adjusted close prices of
  Radioshack (\code{RSHCQ}; ticker symbol ``RSHCQ'') from 1982-01-04 to 2015-01-20.
}
\source{
  Radioshack defaulted early 2015. Yahoo Finance did not provide
  adjusted close prices thereafter. We thus used the adjusted close
  prices from 1982-01-04 to 2015-01-20 which we drew from Yahoo Finance
  on 2015-01-21 via the function \code{get_data()} from
  \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("RSHCQ")
}
\keyword{datasets}