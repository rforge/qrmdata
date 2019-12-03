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
      in percent for 120 times to maturity (ranging from 0.25 to 30 years); only
      trading days from 1991-01-02 to 2015-08-31 with available values
      for all maturities are included.
    }
    \item{\code{ZCB_USD}:}{
      \code{\link{xts}} object containing, in each row, zero-coupon bond yield curves
      in percent for 30 times to maturity (ranging from 1 to 30 years); only
      trading days from 1985-11-25 to 2015-12-29 with available values
      for all maturities are included.
    }
  }
}
\source{
  \code{ZCB_CAD} was created from data obtained from
  \url{http://www.bankofcanada.ca/rates/interest-rates/bond-yield-curves/}
  multiplied by 100. \code{ZCB_USD} was obtained from
  \url{https://www.quandl.com/data/FED/SVENY-US-Treasury-Zero-Coupon-Yield-Curve}
  via Quandl. Both data sets were drawn on 2016-01-03 (\code{ZCB_USD} via the
  function \code{get_data()} from \CRANpkg{qrmtools}).
}
\author{Marius Hofert}
\examples{
data("ZCB_CAD")
data("ZCB_USD")
mat <- as.matrix(ZCB_USD['2015-01-01/2015-12-31',])
df <- data.frame(Day = rep(1:nrow(mat), each = ncol(mat)),
                 Maturity = rep(1:ncol(mat), nrow(mat)),
                 Value = as.vector(t(mat)))
lattice::wireframe(Value ~ Day * Maturity, data = df,
                   alpha.regions = 0.5,
                   scales = list(arrows = FALSE, col = "black"),
                   par.settings = list(axis.line = list(col = "transparent")))
}
\keyword{datasets}