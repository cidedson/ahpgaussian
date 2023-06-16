\name{plot}
\alias{plot.ahpgaussian}


\title{
  Plot Method for ahpgaussian objects
}

\description{
   These are methods for objects of class \code{ahpgaussian}.
}

\usage{
  \method{plot}{ahpgaussian}(x, \dots)
}

\arguments{
  \item{x}{A given object of the class \code{ahpgaussian}}
  \item{\dots}{Other graphical parameters may also be passed as arguments to these functions.}

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
cp <- ahpgaussian(cellphones)
plot(cp)
}

\keyword{ahpgaussian}
\keyword{plot}
\keyword{ahp}
