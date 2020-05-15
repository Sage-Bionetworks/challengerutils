#' Wraps challengeutils.utils.evaluation_queue_query. Written for tests
#'
#' @param query A URI for evaluation queues (select * from evaluation_12345)
.evaluation_queue_query <- function(query) {
  query_func <- challengeutils$utils$evaluation_queue_query
  query_func(syn = syn, uri = query)
}

#' Queries an evaluation queue for submissions
#'
#' @param query A URI for evaluation queues (select * from evaluation_12345)
#'
#' @return The leaderboard results in a tibble.
#' @examples
#' library(challengerutils)
#' use_condaenv('challenge')
#' syn_login()
#' leaderboard_results <- evaluation_queue_query('select * from evaluation_9614194')
#' @import dplyr reticulate
#' @export
evaluation_queue_query <- function(query) {

  leaderboard <- .evaluation_queue_query(query)
  vals_gen <- reticulate::iterate(leaderboard)
  vals <- lapply(vals_gen, function(x){
    x %>% unlist %>% as.data.frame() %>% t() %>% as_tibble()
  }) %>% bind_rows()

  return(vals)
}

