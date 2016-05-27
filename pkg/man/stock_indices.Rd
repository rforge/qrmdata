\name{stock_indices}
\alias{SP500}
\alias{DJ}
\alias{NASDAQ}
\alias{FTSE}
\alias{SMI}
\alias{EURSTOXX}
\alias{CAC}
\alias{DAX}
\alias{CSI}
\alias{HSI}
\alias{SSEC}
\alias{NIKKEI}
\docType{data}
\title{Stock Index Data}
\description{
  Single stock indices.
}
\usage{
data("SP500")
data("DJ")
data("NASDAQ")
data("FTSE")
data("SMI")
data("EURSTOXX")
data("CAC")
data("DAX")
data("CSI")
data("HSI")
data("SSEC")
data("NIKKEI")
}
\format{
  \code{\link{xts}} objects containing adjusted close prices of the
  S\&P 500 (\code{SP500}; ticker symbol ``^GSPC''),
  Dow Jones (\code{DJ}; ticker symbol ``^DJI''),
  NASDAQ 100 (\code{NASDAQ}; ticker symbol ``^NDX''),
  FTSE 100 (\code{FTSE}; ticker symbol ``^FTSE''),
  Swiss Market Index (\code{SMI}; ticker symbol ``^SSMI''),
  Euro Stoxx 50 (\code{EURSTOXX}; ticker symbol ``^STOXX50E''),
  Cotation \enc{Assistée}{Assistee} en Continu (\code{CAC}; ticker symbol ``^FCHI''),
  Deutscher Aktienindex (\code{DAX}; ticker sybmol ``^GDAXI''),
  China Securities Index (\code{CSI}; ticker sybmol ``000300.SS''),
  Hang Seng Index (\code{HSI}; ticker symbol ``^HSI''),
  Shanghai Stock Exchange Composite Index (\code{SSEC}; ticker symbol
  ``000001.SS'') and the
  NIKKEI (\code{NIKKEI}; ticker symbol ``^N225'')
  from their first date of availablility to 2015-12-31.
}
\source{
  The data was obtained from Yahoo Finance on 2016-01-03
  via the function \code{get_data()} from \CRANpkg{qrmtools}.
}
\author{Marius Hofert}
\examples{
data("SP500")
data("DJ")
data("NASDAQ")
data("FTSE")
data("SMI")
data("EURSTOXX")
data("CAC")
data("DAX")
data("CSI")
data("HSI")
data("SSEC")
data("NIKKEI")
}
\keyword{datasets}