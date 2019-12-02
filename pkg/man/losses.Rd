\name{losses}
\alias{fire}
\alias{DNB}
\docType{data}
\title{Loss Datasets}
\description{
  Danish fire insurance claims in 1M DKK in Denmark from 1980-01-03 to
  1990-12-31. Largest 1\% of simulated losses of Norwegian bank DNB.
}
\usage{
data("fire")
data("DNB")
}
\format{
  \describe{
    \item{\code{fire}:}{univariate \code{\link{xts}} object with 2167
      observations.}
    \item{\code{DNB}:}{(25000, 3)-\code{\link{matrix}} containing the
      largest 1\% of simulated (market risk, credit risk, asset risk)
      losses of DNB; see Aas and Puccetti (2014, Section 2).}
  }
}
\source{
  \describe{
    \item{\code{fire}:}{Originally Mette Rytgaard (Copenhagen Re).}
    \item{\code{DNB}:}{Originally Kjersti Aas and Giovanni Puccetti.}
  }
}
\author{Marius Hofert}
\references{
  Aas, K. and Puccetti, G. (2014).
  Bounds for total economic capital: the DNB case study.
  \emph{Extremes} \bold{17}(4), 693--715.
}
\examples{
library(xts)
## Danish fire losses
data("fire")
str(fire)
stopifnot(inherits(fire, "xts"), length(fire) == 2167)
plot.zoo(fire, ylab = "Fire insurance claim")

## Largest 1% of simulated DNB losses
data("DNB")
stopifnot(dim(DNB) == c(25000, 3))
}
\keyword{datasets}
