#' @importFrom methods setRefClass new
#' @importFrom reshape2 melt dcast
#' @importFrom graphics barplot text
#' @importFrom stats ave reorder sd
#' @docType package
#' @name summary.ahpgaussian
#' @export

summary.ahpgaussian <- function(object,
                                presentation=FALSE, ...)
{
  if (!inherits(object, 'ahpgaussian'))
    stop("Use this function only with 'ahpgaussian' class!")

  if(!presentation){

    d <- length(object$number)

    x <- list('Table1' = object$table1,
              'Table2' = object$table2,
              'Table3' = object$table3)
    class(x) <- c('summary.ahpgaussian', 'listof')

    x

  } else {

    d <- length(object$number)

    cat(' Table 1:\t\t\t\t',
        object$table1)
    cat('\n  - Table 2:\t\t\t\t',
        object$table2)
    cat('\n  - Table 3:\t\t\t\t',
        object$table3)

    cat('\n')
  }
}
