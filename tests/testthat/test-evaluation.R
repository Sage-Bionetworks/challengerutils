test_that("Evaluation Query tests", {
  challengeutils <- import('challengeutils')
  mock = mock(100)
  stub(evaluation_queue_query, '.evaluation_queue_query', mock)
  stub(evaluation_queue_query, "reticulate::iterate", list(list("objectId" = "333")))
  results = evaluation_queue_query("syn", "select * from foo")
  expect_called(mock, 1)
  expect_args(mock, 1, "syn", "select * from foo")
  expect_equal(results$objectId, "333")
})

