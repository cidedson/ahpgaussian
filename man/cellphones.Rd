\name{cellphones}
\alias{cellphones}

\title{
    Decision Matrix
}

\description{

An example data.frame about cellphone model characteristics

}


\usage{
  data(cellphones)
}

\format{
  The format is:
  \verb{
    'data.frame':	5 obs. of  5 variables:
    $ criteria: chr  "Price" "Camera" "Storage" "Battery Life" ...
    $ Xiaomi  : int  1500 12 64 24 94
    $ Samsung : int  1800 12 128 18 120
    $ iPhone  : int  5000 20 128 10 117
    $ min_max : chr  "min" "max" "max" "max" ...
    # Description
    #
    criteria: Statement of the goal, decision criteria and alternatives.
    Xiaomi: Xiaomi model;
    Samsung: Samsung model; or
    iPhone: iPhone model.
    min_max: Weights of criteria and alternatives.

  }
}

\examples{
data(cellphones)
cellphones
}

\keyword{datasets}
