#' @importFrom methods setRefClass new
#' @importFrom reshape2 melt dcast
#' @importFrom graphics barplot text
#' @importFrom stats ave reorder sd
#' @docType package
#' @name plot.ahpgaussian
#' @export

plot.ahpgaussian <- function(x, ...)
{
  if (!inherits(x, 'ahpgaussian'))
    stop("Use this function only with 'ahpgaussian' class!")
   text(x = barplot(x[[3]]$punctuation,
                    names.arg = x[[3]]$variable, col = x[[3]]$variable,
                   ylim = c(0, max(x[[3]]$punctuation) * 1.1)),
       y = x[[3]]$punctuation,
       labels = paste0(x[[3]]$rank),
       pos = 3,
       offset = 0.5)

}
