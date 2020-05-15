library(mockery)

test_that("Evaluation Query tests", {
  m = mock(100)
  stub(evaluation_queue_query, '.evaluation_queue_query', m)
  stub(evaluation_queue_query, "reticulate::iterate", list(list("objectId" = "333")))
  results = evaluation_queue_query("select * from foo")
  expect_called(m, 1)
  expect_args(m, 1, "select * from foo")
  expect_equal(results$objectId, "333")
})

