#' Wraps challengeutils.createchallenge.main. Written for tests
#'
#' @param challenge_name Name of the challenge
.createchallenge <- function(challenge_name) {
  create_chal <- challengeutils$createchallenge$main
  create_chal(syn, challenge_name)
}

#' Creates two project entity for challenge sites.
#' 1 - public site and 2 - private site
#'
#' @param challenge_name Name of the challenge
#'
#' @return list of resources created for a challenge space
#' @examples
#' library(challengerutils)
#' use_condaenv('challenge')
#' syn_login()
#' challenge <- createchallenge('My Challenge Name')
#' @import reticulate
#' @export
createchallenge <- function(challenge_name) {
  .createchallenge(challenge_name)
}
