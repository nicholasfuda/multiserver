test_that("multiserver function works", {
  expect_identical(Multiserver(1,2,3),
                  dplyr::tibble(Arrivals = 1, ServiceBegins = 1, ChosenServer  = 1, ServiceEnds = 3))
  expect_identical(Multiserver(2,3,5),
                  dplyr::tibble(Arrivals = 2, ServiceBegins = 2, ChosenServer  = 1, ServiceEnds = 5))

  expect_error(Multiserver(-3,5,0))
})
