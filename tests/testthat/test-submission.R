library(mockery)

test_that("Change Submmission tests", {
  m = mock(100)
  stub(change_submission_status, '.change_submission_status', m)
  new_status = change_submission_status(111, status = "SCORED")
  expect_called(m, 1)
  expect_args(m, 1, 111, status = "SCORED")
  expect_equal(new_status, 100)
})


test_that("Get submitter name test", {
  m = mock("username")
  stub(get_submitter_name, '.get_submitter_name', m)
  submitter_name = get_submitter_name(12345)
  expect_called(m, 1)
  expect_args(m, 1, 12345)
  expect_equal(submitter_name, "username")
})
