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
  Constituent data of various stock indices.
}
\usage{
data("SP500_const")
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\format{
  \code{\link{xts}} objects containing adjusted close prices of the
  constituents of the respective stock indices. These are
  the S\&P 500 constituents (\code{SP500_const} with corresponding
  Global Industry Classification Standard (GICS) information
  \code{SP500_const_info}; see
  \url{https://en.wikipedia.org/wiki/List_of_S\%26P_500_companies})
  as of 2015-10-12, the Dow Jones constituents (\code{DJ_const}; see
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
  on 2016-01-03 via the function \code{get_data()} from
  \CRANpkg{qrmtools}.

  Note that for the S\&P 500 constituents, the data was rounded to two
  decimal places to reduce the file size of the data set.
}
\author{Marius Hofert}
\examples{
data("SP500_const")
data("DJ_const")
data("FTSE_const")
data("EURSTX_const")
data("HSI_const")
}
\keyword{datasets}