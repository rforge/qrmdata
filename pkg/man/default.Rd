\name{default}
\alias{SP_defaults}
\docType{data}
\title{Standard & Poor's Default Data}
\description{
  A three-dimensional array containing the default data for A-, BBB-, BB-,
  B- and C-rated companies for the years from 1981 to 2000.
}
\usage{
data("SP_defaults")
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
  Standard & Poor's Credit Monitor % manually collected by Alexander J. McNeil
}
\author{Marius Hofert}
\examples{
data("SP_defaults")
}
\keyword{datasets}
