#' @title Summary for ahpgaussian objects
#' @description Show summary tables from the AHP Gaussian analysis.
#'
#' @param object Object of class `ahpgaussian`.
#' @param presentation If TRUE, prints a human-readable summary to the console.
#' @param ... Additional arguments (ignored).
#'
#' @return A list containing Table1, Table2 and Table3.
#' @export
summary.ahpgaussian <- function(object, presentation = FALSE, ...) {
  if (!inherits(object, "ahpgaussian")) {
    stop("This function should only be used with objects of class 'ahpgaussian'.")
  }

  out <- list(
    Table1 = object$table1,
    Table2 = object$table2,
    Table3 = object$table3
  )
  class(out) <- "summary.ahpgaussian"

  if (presentation) {
    cat("Summary of AHP Gaussian\n\n")
    cat("- Table1 (normalized data)\n")
    print(as.data.frame(out$Table1))  # show only first lines
    cat("\n- Table2 (normalized factors)\n")
    print(as.data.frame(out$Table2))
    cat("\n- Table3 (final ranking)\n")
    print(as.data.frame(out$Table3))
    invisible(out)
  } else {
    out
  }
}

#' @title Print method for summary.ahpgaussian
#' @description Compact print method for summaries of AHP Gaussian results.
#' @param x An object of class `summary.ahpgaussian`.
#' @param ... Additional arguments (ignored).
#' @export
print.summary.ahpgaussian <- function(x, ...) {
  cat("Summary of ahpgaussian object:\n")
  cat(" - Table1:", nrow(x$Table1), "rows\n")
  cat(" - Table2:", nrow(x$Table2), "rows\n")
  cat(" - Table3:", nrow(x$Table3), "rows (ranking)\n")
  invisible(x)
}
