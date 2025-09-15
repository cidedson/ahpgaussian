#' @title Plot for ahpgaussian objects
#' @description Create a bar plot with the scores and ranks from an AHP Gaussian analysis.
#'
#' @param x Object of class `ahpgaussian`.
#' @param ... Additional arguments passed to ggplot2::geom_col.
#'
#' @return A ggplot2 object.
#' @export
#' @importFrom ggplot2 ggplot aes geom_col geom_text scale_fill_brewer theme_minimal
plot.ahpgaussian <- function(x, ...) {
  if (!inherits(x, "ahpgaussian")) {
    stop("This function should only be used with objects of class 'ahpgaussian'.")
  }

  df <- x$table3
  if (!all(c("variable", "punctuation", "rank") %in% names(df))) {
    stop("Invalid ahpgaussian object: missing columns in table3.")
  }

  ggplot2::ggplot(df, ggplot2::aes(x = variable, y = punctuation, fill = variable)) +
    ggplot2::geom_col(...) +
    ggplot2::geom_text(ggplot2::aes(label = rank), vjust = -0.5) +
    ggplot2::scale_fill_brewer(palette = "Set3") +
    ggplot2::theme_minimal()
}
