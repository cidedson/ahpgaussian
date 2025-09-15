#' @title Default method for ahpgaussian
#' @description Apply the AHP-Gaussian method to a data frame.
#'
#' @param x A data frame with criteria, alternatives and a column `min_max`.
#'
#' @return An object of class `ahpgaussian`.
#' @export
#' @importFrom dplyr mutate group_by summarise ungroup if_else arrange
#' @importFrom tidyr pivot_longer pivot_wider
ahpgaussian.default <- function(x) {
  stopifnot(is.data.frame(x))

  # Reshape data
  x2 <- x %>%
    tidyr::pivot_longer(
      cols = -c(1, ncol(x)),
      names_to = "variable",
      values_to = "value"
    ) %>%
    dplyr::mutate(
      value = if_else(.data$min_max == "min", 1 / value, value)
    ) %>%
    dplyr::group_by(criteria) %>%
    dplyr::mutate(
      sum   = sum(value, na.rm = TRUE),
      norm  = value / sum,
      mean  = mean(norm, na.rm = TRUE),
      sd    = sd(norm, na.rm = TRUE),
      factor = sd / mean
    ) %>%
    dplyr::ungroup()

  # Normalized factors by criteria
  x3 <- x2 %>%
    dplyr::select(criteria, factor) %>%
    dplyr::distinct() %>%
    dplyr::mutate(factor = factor / sum(factor, na.rm = TRUE))

  # Norm by criteria and variable
  x4 <- x2 %>%
    dplyr::select(criteria, variable, norm) %>%
    tidyr::pivot_wider(names_from = variable, values_from = norm)

  # Join with factors and compute punctuation
  x5 <- x4 %>%
    dplyr::inner_join(x3, by = "criteria") %>%
    tidyr::pivot_longer(
      cols = -c(criteria, factor),
      names_to = "variable",
      values_to = "value"
    ) %>%
    dplyr::mutate(value_factor = factor * value) %>%
    dplyr::group_by(variable) %>%
    dplyr::summarise(punctuation = sum(value_factor, na.rm = TRUE), .groups = "drop") %>%
    dplyr::arrange(dplyr::desc(punctuation)) %>%
    dplyr::mutate(rank = dplyr::row_number())

  # Results
  results <- list(
    table1 = x2,
    table2 = x3,
    table3 = x5
  )
  class(results) <- "ahpgaussian"
  return(results)
}
