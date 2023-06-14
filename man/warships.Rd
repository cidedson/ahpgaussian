\name{warships}
\alias{warships}

\title{
    Decision Matrix
}

\description{

A data.frame Decision Matrix of the data used Santos (2021), the first column lists the criteria, while the next three columns represent the alternatives and the last column represents the objective choice between minimum and maximum for a given criterion. Each model corresponds to an alternative of ship, classified according to its respective criteria.

}

\references{
  dos Santos, M, Costa, I. P. de A., & Gomes, C. F. S. (2021)
  Multicriteria decision-making in the selection of warships: a new approach to the ahp method. \emph{International Journal of the Analytic Hierarchy Process}, 13(1).
  <doi:10.13033/ijahp.v13i1.833>.
}


\usage{
  data(warships)
}

\format{
  The format is:
  \verb{
    'data.frame':	9 obs. of  5 variables:
    criteria: chr  "Action Radius" "Fuel Endurance" "Autonomy" "Primary Cannon" ...
    model_1 : num  4000 11 30 25 1 0 290 592 6
    model_2 : num  9330 26 25 25 2 1 310 633 8
    model_3 : num  10660 30 35 120 2 ...
    min_max : chr  "max" "max" "max" "max" ...
    #
    # Description
    #
    criteria: Statement of the goal, decision criteria and alternatives.
    model_1: Replicate the current Corvette Barroso;
    model_2: Build a slightly modernized ship (2.600 ton corvette); or
    model_3: Build a model with more significant modernizations (3.000 ton corvette).
    min_max: Weights of criteria and alternatives.

  }
}

\examples{
data(warships)
warships
}

\keyword{datasets}
