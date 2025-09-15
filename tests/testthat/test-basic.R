test_that("ahpgaussian roda com dataset warships", {
  data("warships", package = "AHPGaussian")

  res <- ahpgaussian(warships)

  # Checa classes
  expect_s3_class(res, "ahpgaussian")
  expect_true(all(c("table1", "table2", "table3") %in% names(res)))

  # Checa se tabela 3 tem colunas certas
  expect_true(all(c("variable", "punctuation", "rank") %in% names(res$table3)))

  # Summary retorna lista
  s <- summary(res)
  expect_s3_class(s, "summary.ahpgaussian")

  # Plot não deve dar erro
  expect_error(plot(res), NA)
})
