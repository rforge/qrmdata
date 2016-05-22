\name{stock_indices_constituents}
\alias{DJ_const}
\alias{FTSE_const}
\alias{EURSTX_const}
\alias{HSI_const}
\docType{data}
\title{Stock Index Constituents Data}
\description{
  Constituent data of various stock indices.
}
\usage{
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\format{
  \code{\link{xts}} objects containing adjusted close prices of the
  constituents of the respective stock indices. These are
  the Dow Jones constituents (\code{DJ_const}; see
  \url{https://finance.yahoo.com/q/cp?s=\%5EDJI}) as of 2016-01-03,
  the FTSE 100 constituents (\code{FTSE_const}; see
  \url{https://uk.finance.yahoo.com/q/cp?s=\%5EFTSE}) as of 2016-01-03
  (the data was only available for 98 constituents),
  the Euro Stoxx 50 constituents (\code{EURSTX_const}; see
  \url{https://uk.finance.yahoo.com/q/cp?s=\%5ESTOXX50E}) as of 2016-01-03
  (the data was only available for 98 constituents) and
  the Hang Seng Index constituents (\code{HSI_const};
  see \url{https://uk.finance.yahoo.com/q/cp?s=\%5EHSI}) as of 2016-01-03.

  The constituents data ranges from the first date at least
  one of the constituents is available (with missing
  data if not available) to 2015-12-31.
}
\source{
  The data was obtained from the respective URLs
  on 2016-01-03 via the function \code{\link[qrmtools]{get_data}()} from \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\keyword{datasets}