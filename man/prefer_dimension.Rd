\name{prefer_height}
\alias{prefer_height}
\alias{prefer_width}
\title{Preferred height and width of layers with texts}
\usage{
prefer_height(text)

prefer_width(text, horizontal = TRUE)
}
\arguments{
  \item{text}{the character vector to be drawn in the
  layer}

  \item{horizontal}{logical: the text is drawn horizontally
  (\code{TRUE}) or vertically (\code{FALSE})}
}
\value{
  The height or width (numeric).
}
\description{
  The height and width of a layer which draws texts often
  involves with the number of line breaks (\code{'\n'}) in
  the texts. These two functions give the preferred height
  and width of a layer as a rule of thumb.
}
\details{
  Usually the height and width of the title layer and x-
  and y-axis layers need to be adjusted dynamically.
}
\examples{
prefer_height("a label")
prefer_height("this is\\na label")
prefer_width("abc")
prefer_width("a long long label")
prefer_width("line\\nbreaks")  # 'breaks' dominates the width because it is wider
prefer_width("multiple\\nvertical\\nlines", horizontal = FALSE)
}
\author{
  Yihui Xie <\url{http://yihui.name}>
}
