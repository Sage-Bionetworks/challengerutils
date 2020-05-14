#' Wraps challengeutils.utils.evaluation_queue_query. Written for tests
#'
#' @param syn A Synapse object
#' @param uri A URI for evaluation queues (select * from evaluation_12345)
.evaluation_queue_query <- function(syn, query) {
  challengeutils <- import('challengeutils')
  query_func <- challengeutils$utils$evaluation_queue_query
  query_func(syn = syn, uri = query)
}

#' Queries an evaluation queue for submissions
#'
#' @param syn A Synapse object
#' @param uri A URI for evaluation queues (select * from evaluation_12345)
#'
#' @return The leaderboard results in a tibble.
#' @examples
#' library(challengerutils)
#' use_condaenv('challenge')
#' synapseclient <- import('synapseclient')
#' syn <- synapseclient$Synapse()
#' syn$login()
#' leaderboard_results <- evaluation_queue_query(syn, 'select * from evaluation_12345')
#' @import dplyr reticulate
#' @export
evaluation_queue_query <- function(syn, query) {
  leaderboard <- .evaluation_queue_query(syn, query)
  vals_gen <- reticulate::iterate(leaderboard)
  vals <- lapply(vals_gen, function(x){
    x %>% unlist %>% as.data.frame() %>% t() %>% as_tibble()
  }) %>% bind_rows()
}

