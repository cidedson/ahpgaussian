#' @importFrom methods setRefClass new
#' @importFrom reshape2 melt dcast
#' @importFrom graphics barplot text
#' @importFrom stats ave reorder sd
#' @docType package
#' @name ahpgaussian
#' @export

ahpgaussian <- function(x)
  UseMethod('ahpgaussian', x)
