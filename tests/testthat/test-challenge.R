library(mockery)

test_that("Change Submmission tests", {
  m = mock("response")
  stub(createchallenge, '.createchallenge', m)
  new_status = createchallenge("My Challenge Name")
  expect_called(m, 1)
  expect_args(m, 1, "My Challenge Name")
  expect_equal(new_status, "response")
})
