#' @title Analyze a Dynamical System
#'
#' @description
#' Compute the vectorial capacity and human transmitting capacity matrices.
#'
#' @param xds_obj an **`xds`** model object
#'
#' @export
xds_analyze = function(xds_obj){
  for(s in 1:xds_obj$nVectorSpecies){
    xds_obj <- make_VC(xds_obj, s)
    xds_obj <- compute_VC(xds_obj, s, 1e-6)
  }

#  for(i in 1:xds_obj$nHostSpecies)
#    xds_obj <- make_HTC(xds_obj, i)
#  xds_obj <- make_R0matrix(xds_obj)

  return(xds_obj)
}
