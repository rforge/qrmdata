\name{volatility}
\alias{VIX}
\docType{data}
\title{Volatility Index}
\description{
  Volatility index data.
}
\usage{
data("VIX")
}
\format{
  An \code{\link{xts}} object containing the volatility index
  (\code{VIX}; ticker symbol ``^VIX'') from its first date of availablility
  to 2015-12-31.
}
\source{
  The data was obtained from Yahoo Finance
  (\url{http://finance.yahoo.com/}) on 2016-01-03 via the
  function \code{\link[qrmtools]{get_data}()} from \CRANpkg{qrmtools}).
}
\author{Marius Hofert}
\examples{
data("VIX")
}
\keyword{datasets}