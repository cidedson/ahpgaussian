\name{ahpgaussian}
\alias{ahpgaussian}
\alias{ahpgaussian.default}
\title{New Multicriteria Method: AHPGaussian}

\description{

Analytic Hierarchy Process (AHP) is a method allowing individuals or groups to make complex decisions. The core concept of AHP is that alternatives are always compared pairwise (and not, say, by giving a score, or sorting alternatives). AHP is used in many fields, from finance to criminal investigation.

The AHP Gaussian is a modification of the AHP that uses a Gaussian function to model the pairwise comparisons between criteria and alternatives. In the traditional AHP, pairwise comparisons are made using numerical values on a scale from 1 to 9, which can be subjective and lead to inconsistencies. The AHP Gaussian addresses this issue by using a continuous function that allows for more precise and consistent comparisons.

The function is defined by a mean value and a standard deviation, which can be estimated from the pairwise comparison data. The resulting weights for the criteria and alternatives are obtained by solving a system of linear equations. The Gaussian AHP has been shown to be effective in various applications, including military decision-making and environmental management.

}


\usage{
ahpgaussian(x)
}

\arguments{
  \item{x}{A \code{data.frame} object.}
  }


\value{Values are returned from the analysis with results and graphical output}


\author{
  Cid Edson Povoas (\email{cidedson@gmail.com})\cr
}


\references{
  dos Santos, M, Costa, I. P. de A., & Gomes, C. F. S. (2021)
  Multicriteria decision-making in the selection of warships: a new approach to the ahp method. \emph{International Journal of the Analytic Hierarchy Process}, 13(1). <doi:10.13033/ijahp.v13i1.833>
}


\examples{

##
## Example 1
##

ahpgaussian(warships)


}

\keyword{ahp}
