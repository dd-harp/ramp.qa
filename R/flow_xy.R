#' Plot Connectivity as a Sankey Diagram
#'
#' @param M an asymmetric matrix
#' @param clrs colors for the patches
#' @param oclrs opaque colors for the flows
#' @importFrom plotly plot_ly
#' @importFrom grDevices grey
#' @returns invisible
#' @export
plot_flow_sankey = function(M, clrs, oclrs=NULL){

  dm = dim(M)
  if(is.null(oclrs)) oclrs = rep(grey(0.4, 0.4), prod(dm))
  fig <- plot_ly(
    type = "sankey",
    orientation = "h",

    node = list(
      label = signif(c(colSums(M), rowSums(M)), 3),
      color = rep(clrs, 2),
      pad = 15,
      thickness = 25,
      line = list(
        color = "black",
        width = 0.2
      )
    ),

    link = list(
      source = as.vector(t(matrix(1:dm[2], dm[2],dm[1])))-1,
      target = as.vector(matrix(1:dm[1], dm[1],dm[2]))-1 + dm[2],
      value =  as.vector(t(M)),
      color = rep(oclrs, prod(dm))
    )
  )
  return(fig)
}
