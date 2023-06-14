\name{summary.ahpgaussian}
\alias{summary.ahpgaussian}

\title{
  Summary Method for ahpgaussian objects
}

\description{
  Returns (and prints) a summary list for \code{ahpgaussian}) objects.
}

\usage{
  \method{summary}{ahpgaussian}(object,
        presentation=FALSE, \dots)
}

\arguments{
  \item{object}{A given object of the class \code{ahpgaussian}}
  \item{presentation}{Logic.
    If \code{TRUE} the summary of the class \code{ahpgaussian} is showed well formated in the screen, else, return a list.
    The default is \code{FALSE}.}
  \item{\dots}{Potential further arguments (require by generic).}
}


\author{
  Cid Edson Povoas (\email{cidedson@gmail.com})\cr
}


\references{
  dos Santos, M, Costa, I. P. de A., & Gomes, C. F. S. (2021)
  Multicriteria decision-making in the selection of warships: a new approach to the ahp method. \emph{International Journal of the Analytic Hierarchy Process}, 13(1). <doi:10.13033/ijahp.v13i1.833>
}


\seealso{
  \code{\link{ahpgaussian}}
}

\examples{
##
## Example 1
## ahpgaussian
##
# ahpgaussian
ws <- ahpgaussian(warships)
summary(ws)
}

\keyword{ahpgaussian}
\keyword{summary}
\keyword{ahp}
