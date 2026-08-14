#' Plot Connectivity
#'
#' @param M a connectivity matrix
#' @param xy locations of the patches
#' @param clrs colors
#' @param scl scaling for graph thickness
#' @param labels a set of labels
#' @param lab.cex size of the labels
#' @param arr.pos position of the arrow
#' @param mn plot if weight is greater than mn
#' @importFrom diagram curvedarrow
#' @importFrom graphics points text plot
#' @returns invisible
#' @export
plot_connectivity_graph = function(M, xy=NULL, clrs = "black", scl=1, labels=NULL, lab.cex=0.6, arr.pos = 0.33, mn=0.02){

  dm = dim(M)[1]
  if(length(clrs) !=dm) clrs = viridisLite::turbo(dm)
  if(is.null(xy)){
    theta = seq(0, 2*pi, length.out = dm+1)[-1]
    y = sin(theta)
    x = cos(theta)
    xy = data.frame(x=x, y=y)
  }

  plot(xy, xlim = range(xy$x,-0.1, 0.1)*1.3, ylim = range(xy$y, -0.1, 0.1)*1.3,
       xaxt = "n", yaxt="n", xlab="", ylab="", pch=21,
       cex=scl*sqrt(diag(M)), lwd=diag(M)*scl, col = clrs)

  for(i in 1:dm){
    for(j in 1:dm){
      if(i!=j & scl*M[j,i]>mn){
        xyi = as.numeric(xy[i,])
        xyj = as.numeric(xy[j,])

        curvedarrow(xyi, xyj, lwd=scl*M[j,i],
                             arr.type = "triangle", arr.length=.25,
                             curve=.02, arr.pos = arr.pos, lcol = clrs[i])
      }}}


  points(xy, pch=21, cex=scl*sqrt(colSums(M)), col = "white", bg = "white")
  if (is.null(labels))
    labels = signif(colSums(M), 2)

  text(xy$x, xy$y, labels, cex=lab.cex)

  points(xy, cex=scl*sqrt(colSums(M)), col = clrs, lwd=diag(M)*scl)
  return(invisible())
}

#' Plot Connectivity as a Sankey Diagram
#'
#' @param M a connectivity matrix
#' @param clrs colors for the patches
#' @param oclrs opaque colors for the flows
#' @importFrom plotly plot_ly
#' @importFrom grDevices grey
#' @returns invisible
#' @export
plot_connectivity_sankey = function(M, clrs, oclrs=NULL){

  dm = dim(M)[1]
  if(is.null(oclrs)) oclrs = rep(grey(0.4, 0.4), dm)
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
      source = as.vector(matrix(1:dm, dm,dm))-1,
      target = as.vector(t(matrix(1:dm, dm,dm)))-1 +dm,
      value =  as.vector(t(M)),
      color = rep(oclrs, dm)
    )
  )
  return(fig)
}
