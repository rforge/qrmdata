\name{stock_indices_constituents}
\alias{SP500_const}
\alias{SP500_const_info}
\alias{DJ_const}
\alias{FTSE_const}
\alias{EURSTX_const}
\alias{HSI_const}
\docType{data}
\title{Stock Index Constituents Data}
\description{
  Constituent data of stock indices.
}
\usage{
data("SP500_const")
data("SP500_const_info")
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\format{ TODO: can we push 2015-10-12 to 2015-12-31?
  \code{\link{xts}} objects containing adjusted close prices of the
  constituents of the respective stock indices. These are the S\&P 500
  constituents (\code{SP500}; see
  \url{https://www.cboe.com/products/snp500.aspx}) as of 2015-10-12
  (with corresponding GICS information TODO: beschr. \code{SP500_const_info}), the Dow
  Jones constituents (\code{DJ_const}; see
  \url{https://finance.yahoo.com/q/cp?s=%5EDJI}) as of 2015-12-10, the
  FTSE 100 constituents (\code{FTSE_const}; see \url{https://uk.finance.yahoo.com/q/cp?s=%5EFTSE})
  as of 2015-12-10 (the data was only available for 98 constituents), the
  Euro Stoxx 50 constituents (\code{EURSTX_const}; see \url{https://uk.finance.yahoo.com/q/cp?s=%5ESTOXX50E})
  as of 2015-12-10 (the data was only available for 98 constituents) and
  the HSI TODO: ausschr. constituents (\code{HSI_const}; see \url{https://uk.finance.yahoo.com/q/cp?s=%5EHSI})
  as of 2015-12-10. The constituents data ranges from the first date at
  least one of the constituents is available (with missing
  data if not available) to 2015-12-31.
}
\source{
  The data was obtained from Yahoo Finance
  (\url{http://finance.yahoo.com/}) on 2016-01-03;
  see \code{vignette("get_data", package="qrmdata")}.
}
\author{Marius Hofert}
\examples{
data("SP500_const")
data("SP500_const_info")
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\keyword{datasets}