\name{commodities}
\alias{OIL}
\alias{GOLD}
\docType{data}
\title{Commodity Data}
\description{
  Data sets containing commodities.
}
\usage{
data("OIL")
data("GOLD")
}
\format{
  \code{\link{xts}} objects containing the Brent Crude price in USD per
  barrel (for \code{OIL}) and the World Gold Council gold price in USD
  per troy ounce (for \code{GOLD}).
}
\source{
  The data was obtained from Federal Reserve Economic Data (FRED) via
  Quandl on 2016-01-03; see \code{vignette("get_data", package="qrmdata")}.
}
\author{Marius Hofert}
\examples{
data("OIL")
data("GOLD")
}
\keyword{datasets}