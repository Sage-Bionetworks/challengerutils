challengeutils <- NULL
synapseclient <- NULL
syn <- NULL

.onLoad <- function(libname, pkgname) {

  #if challengeutils has not already been imported, do it
  challengeutils <<- reticulate::import('challengeutils', delay_load = T)

  #if synapseclient has not already been imported, do it
  synapseclient <<- reticulate::import('synapseclient', delay_load = T)
  syn <<- synapseclient$Synapse()

}
