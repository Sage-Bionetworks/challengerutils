challengeutils <- NULL
synapseclient <- NULL

.onLoad <- function(libname, pkgname) {

  syn_inst <- reticulate::py_module_available("synapseclient")
  chal_inst <- reticulate::py_module_available("challengeutils")

  if(chal_inst){
    challengeutils <<- reticulate::import('challengeutils', delay_load = T)
  }

  if(syn_inst){
    synapseclient <<- reticulate::import('synapseclient', delay_load = T)
  }

}

