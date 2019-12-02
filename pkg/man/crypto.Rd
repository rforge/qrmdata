\name{crypto}
\alias{crypto}
\docType{data}
\title{Cryptocurrency Prices in USD}
\description{
  Bitcoin, Ethereum, Litecoin and Ripple prices in USD (from their
  first available date onwards).
}
\usage{
data("crypto")
}
\format{
  \code{\link{xts}} object containing cryptocurrency prices in USD
  of Bitcoin (ticker symbol ``BTC-USD''), Ethereum (ticker symbol
  ``ETH-USD''), Litecoin (ticker symbol ``LTC-USD'') and Ripple (ticker
  symbol ``XRP-USD'') from their first available date onwards.
}
\source{
  The data was obtained from Yahoo Finance on 2018-05-29
  via the function \code{get_data()} from \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("crypto")
str(crypto)
library(xts)
plot.zoo(crypto, main = "Cryptocurrencies in USD", xlab = "Time")
}
\keyword{datasets}
