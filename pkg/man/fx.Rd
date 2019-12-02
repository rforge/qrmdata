\name{fx}
\alias{CAD_USD}
\alias{GBP_USD}
\alias{EUR_USD}
\alias{CHF_USD}
\alias{JPY_USD}
\alias{CNY_USD}
\alias{CAD_GBP}
\alias{USD_GBP}
\alias{EUR_GBP}
\alias{CHF_GBP}
\alias{JPY_GBP}
\alias{CNY_GBP}
\docType{data}
\title{Foreign Exchange Rate Data}
\description{
  Foreign exchange rate data with respect to USD and GBP.
}
\usage{
data("CAD_USD")
data("GBP_USD")
data("EUR_USD")
data("CHF_USD")
data("JPY_USD")
data("CNY_USD")
data("CAD_GBP")
data("USD_GBP")
data("EUR_GBP")
data("CHF_GBP")
data("JPY_GBP")
data("CNY_GBP")
}
\format{
  \code{\link{xts}} objects containing foreign exchange rates of
  Canadian Dollar (\code{CAD_*}), US Dollar (\code{USD_*}),
  British Pound (\code{GBP_*}), Euro (\code{EUR_*}), Swiss Francs
  (\code{CHF_*}), Japanese Yen (\code{JPY_*}), Chinese Yuan (\code{CNY_*})
  with respect to USD (\code{*_USD}) and GBP (\code{*_GBP}) from
  2000-01-01 to 2015-12-31.
}
\source{
  The data was obtained from OANDA (\url{http://www.oanda.com/}) on
  2016-01-03 via the
  function \code{get_data()} from \CRANpkg{qrmtools}.
}
\details{
  Interpretation: As an example, \code{EUR_USD} contains the EUR/USD
  exchange rate, so a value \eqn{x} in \code{EUR_USD}
  indicates that 1 EUR is worth \eqn{x} USD at that point in time.
}
\author{Marius Hofert}
\examples{
data("CAD_USD")
data("GBP_USD")
data("EUR_USD")
data("CHF_USD")
data("JPY_USD")
data("CNY_USD")
data("CAD_GBP")
data("USD_GBP")
data("EUR_GBP")
data("CHF_GBP")
data("JPY_GBP")
data("CNY_GBP")
}
\keyword{datasets}