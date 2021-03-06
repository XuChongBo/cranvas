\docType{data}
\name{brfss}
\alias{brfss}
\title{Subset of data from the Behavioral Risk Factor Surveillance System}
\format{data.frame: 245 obs. of  409 variables}
\source{
  \url{http://www.cdc.gov/BRFSS/}
}
\description{
  Part of the largest, on-going telephone health survey
  system, tracking health conditions and risk behaviors in
  the United States yearly since 1984. This data has a lot
  of missing values, so it is used for testing the missing
  value plots.
}
\examples{
library(cranvas)
qbrfss <- qdata(brfss)

qmval(names(brfss)[40:50], data = qbrfss)
qmval(51:68, data = qbrfss)
qmval(~poorhlth + fruit + greensal, data = qbrfss)
}
\keyword{datasets}
