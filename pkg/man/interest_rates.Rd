\name{interest_rates}
\alias{ZCB_CA}
\alias{ZCB_US}
\docType{data}
\title{Interest-Rate Data}
\description{
  Zero-coupon bond yield curves in CAD and USD.
}
\usage{
data("ZCB_CA")
data("ZCB_US")
}
\format{
  \code{\link{xts}} objects containing zero-coupon bond yield curves
  for times to maturity ranging from one to thirty years. Only trading
  days with available values for all maturities are included.
}
\source{
  \code{ZCB_CA} was obtained from
  \url{http://www.bankofcanada.ca/rates/interest-rates/bond-yield-curves/}
  and \code{ZCB_US} was obtained from
  \url{https://www.quandl.com/data/FED/SVENY-US-Treasury-Zero-Coupon-Yield-Curve}
  via Quandl; both data sets were drawn on 2016-01-03 (\code{ZCB_US} via the
  function \code{get_data()} from \CRANpkg{qrmtools}).
}
\author{Marius Hofert}
\examples{
data("ZCB_CA")
data("ZCB_US")
}
\keyword{datasets}