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
#' @return Updated submission status
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

#' Wraps challengeutils.utils._get_submitter_name. Written for tests
#'
#' @param submitterid submitter id, can be a Synapse team or user Id.
.get_submitter_name <- function(submitterid) {
  get_submitter = challengeutils$utils$`_get_submitter_name`
  get_submitter(syn = syn, submitterid = submitterid)
}

#' Gets the Synapse team name or username given a submitterid
#'
#' @param submitterid submitter id, can be a Synapse team or user Id.
#'
#' @return Team or User name
#' @examples
#' library(challengerutils)
#' use_condaenv('challenge')
#' syn_login()
#' username <- get_submitter_name('3324230')
#' teamname <- get_submitter_name('3377845')
#' @import reticulate
#' @export
get_submitter_name <- function(submitterid) {
  .get_submitter_name(submitterid)
}
