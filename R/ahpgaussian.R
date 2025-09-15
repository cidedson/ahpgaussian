#' Analytic Hierarchy Process with Gaussian adaptation
#'
#' Generic S3 function to apply the AHP-Gaussian method to different input types.
#' Currently implemented for data frames.
#'
#' @param x Input object (e.g., a data.frame).
#'
#' @return An object of class `ahpgaussian`.
#' @export
ahpgaussian <- function(x) {
  UseMethod("ahpgaussian")
}
