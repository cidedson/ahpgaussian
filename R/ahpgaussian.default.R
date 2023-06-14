#' @importFrom methods setRefClass new
#' @importFrom reshape2 melt dcast
#' @importFrom graphics barplot text
#' @importFrom stats ave reorder sd
#' @docType package
#' @name ahpgaussian.default
#' @export

ahpgaussian.default <- function(x) {
    stopifnot(is.data.frame(x))
    x2 <- reshape2::melt(x, id.vars = c(1,dim(x)[2]), measure.vars = -c(1, dim(x)[2]))
    x2$value <- ifelse(x2$min_max == "min", 1 / x2$value, x2$value)
    x2 <- transform(x2,sum = ave(value, criteria, FUN = sum))
    x2 <- transform(x2,norm = value / sum)
    x2 <- transform(x2,mean = ave(norm, criteria, FUN = mean))
    x2 <- transform(x2,sd = ave(norm, criteria, FUN = sd))
    x2 <- transform(x2,factor = sd / mean)
    x3 <- unique(x2[, c("criteria", "factor")])
    x3$factor <- x3$factor / sum(x3$factor)
    x4 <- x2[, c("criteria", "variable", "norm")]
    x4 <- reshape2::dcast(x4, formula = criteria ~ variable, value.var = "norm")
    x5 <- merge(x4, x3, by = "criteria")
    x5 <- reshape2::melt(x5, id.vars = c("criteria","factor"), measure.vars = -c(1, dim(x)[2]))
    x5$value_factor <- x5$factor * x5$value
    x5 <- x5[, c("criteria", "variable", "value_factor")]
    x5$punctuation <- ave(x5$value_factor, x5$variable, FUN = sum)
    x5 <- x5[, c("variable", "punctuation")]
    x5$variable <- as.factor(x5$variable)
    x5$variable <- reorder(x5$variable, -x5$punctuation)
    x5 <- droplevels(unique(x5))
    x5 <- x5[order(x5$variable), ]
    x5$rank <- 1
    x5$rank <- ave(x5$rank, FUN = cumsum)
    text(x = barplot(x5$punctuation, names.arg = x5$variable, col = x5$variable,
                     ylim = c(0, max(x5$punctuation) * 1.1)),
         y = x5$punctuation,
         labels = paste0(x5$rank),
         pos = 3,
         offset = 0.5)
  results <- list(table1=x2,table2=x3,table3=x5)
  class(results) <- c('ahpgaussian','list')
  invisible(results)
}


