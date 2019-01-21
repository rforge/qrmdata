\name{interest_rates}
\alias{ZCB_CAD}
\alias{ZCB_USD}
\docType{data}
\title{Interest-Rate Data}
\description{
  Zero-coupon bond yield curves in CAD and USD.
}
\usage{
data("ZCB_CAD")
data("ZCB_USD")
}
\format{
  \describe{
    \item{\code{ZCB_CAD}:}{
      \code{\link{xts}} object containing, in each row, zero-coupon bond yield curves
      for 120 times to maturity (ranging from 0.25 to 30 years); only trading
      days with available values for all maturities are included.
      The 6088 trading days span 1991-01-02 to 2015-08-31.
    }
    \item{\code{ZCB_USD}:}{
      \code{\link{xts}} object containing, in each row, zero-coupon bond yield curves
      in percent for 30 times to maturity (ranging from 1 to 30 years); only trading
      days with available values for all maturities are included.
      The 7509 trading days span 1985-11-25 to 2015-12-29.
    }
  }
}
\source{
  \code{ZCB_CAD} was obtained from
  \url{http://www.bankofcanada.ca/rates/interest-rates/bond-yield-curves/}
  and \code{ZCB_USD} was obtained from
  \url{https://www.quandl.com/data/FED/SVENY-US-Treasury-Zero-Coupon-Yield-Curve}
  via Quandl; both data sets were drawn on 2016-01-03 (\code{ZCB_USD} via the
  function \code{get_data()} from \CRANpkg{qrmtools}).
}
\author{Marius Hofert}
\examples{
data("ZCB_CAD")
data("ZCB_USD")
}
\keyword{datasets}