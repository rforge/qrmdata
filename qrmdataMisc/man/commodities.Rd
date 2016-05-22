\name{commodities}
\alias{OIL_Brent}
\alias{GOLD}
\docType{data}
\title{Commodity Data}
\description{
  Data sets containing commodities.
}
\usage{
data("OIL_Brent")
data("GOLD")
}
\format{
  \code{\link{xts}} objects containing the Brent Crude price in USD per
  barrel (for \code{OIL_Brent}) and the World Gold Council gold price in USD
  per troy ounce (for \code{GOLD}).
}
\source{
  The data was obtained from Federal Reserve Economic Data (FRED) via
  Quandl on 2016-01-03 with the function
  \code{get_data()} from \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("OIL_Brent")
data("GOLD")
}
\keyword{datasets}