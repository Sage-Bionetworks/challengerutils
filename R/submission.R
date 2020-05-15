#' Wraps challengeutils.utils.change_submission_status. Written for tests
#'
#' @param submissionid Id of a submission
#' @param status Change a submission to this status. Defaults to RECEIVED.
#' Here are a list of available statuses.
#' https://rest-docs.synapse.org/rest/org/sagebionetworks/evaluation/model/SubmissionStatusEnum.html
.change_submission_status <- function(submissionid, status = "RECEIVED") {
  change_status <- challengeutils$utils$change_submission_status
  change_status(syn = syn, submissionid = submissionid, status = status)
}

#' Changes a status of a submission
#'
#' @param submissionid Id of a submission
#' @param status Change a submission to this status. Defaults to RECEIVED.
#' Here are a list of available statuses.
#' https://rest-docs.synapse.org/rest/org/sagebionetworks/evaluation/model/SubmissionStatusEnum.html
#'
#' @return Updated submisison status
#' @examples
#' library(challengerutils)
#' use_condaenv('challenge')
#' syn_login()
#' new_status <- change_submission_status('9698553')
#' @import reticulate
#' @export
change_submission_status <- function(submissionid, status = "RECEIVED") {
  .change_submission_status(submissionid, status = status)
}
