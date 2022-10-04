pairs.outliers <- function(x, ...){
  if(missing(x))
    stop("Missing input argument x")
  objo <- x
  if(!inherits(objo, "outliers")) 
    stop("The input argument 'x' should be an object of the 'outliers' class")
  X <- data.frame(objo$X)
  n <- nrow(X)
  opar <- par(mfrow=c(2,2))
  if(length(objo$outliers1)>0){
    pc <- rep("o", n)
    pc[objo$outliers1] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers1] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 1")
  }
  if(length(objo$outliers2)>0){
    pc <- rep("o", n)
    pc[objo$outliers2] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers2] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 2")
  }
  if(length(objo$outliers3)>0){
    pc <- rep("o", n)
    pc[objo$outliers3] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers3] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 3")
  }
  if(length(objo$outliers4)>0){
    pc <- rep("o", n)
    pc[objo$outliers4] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers4] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 4")
  }
  par(opar)
}
