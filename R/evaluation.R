challengeutils <- import('challengeutils')

evaluation_queue_query <- function(syn, query) {
  query_func <- challengeutils$utils$evaluation_queue_query
  leaderboard <- query_func(syn = syn, uri = query)
  vals_gen <- reticulate::iterate(leaderboard)
  vals <- lapply(vals_gen, function(x){
    x %>% unlist %>% as.data.frame() %>% t() %>% as_tibble()
  }) %>% bind_rows()
}

