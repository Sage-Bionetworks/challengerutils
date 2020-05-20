#' Logs into Synapse.
#'
#' @param username a Synapse username (optional, not required if .synapseConfig available)
#' @param password a Synapse password (optional, not required if .synapseConfig available)
#' @examples
#' library(challengerutils)
#' syn_login()
#' @import reticulate
#' @export
syn_login <- function(username = NULL, password = NULL){
  syn <<- synapseclient$Synapse()
  syn$login(username, password)
}
