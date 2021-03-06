\name{check_data}
\alias{check_data}
\title{Check if a data object was created by qdata()}
\usage{
check_data(data)
}
\arguments{
  \item{data}{a data object}
}
\value{
  The data object created by \code{\link{qdata}()}.
}
\description{
  Data objects created by \code{\link{qdata}} has a special
  token, which is checked by this function. If the data
  object was not created by \code{qdata}, it will be
  automatically converted (with a warning message).
}
\examples{
check_data(cbind(x = 1:5, y = 6:10))
check_data(head(mtcars))
check_data(qdata(head(mtcars)))
}
\author{
  Yihui Xie
}
