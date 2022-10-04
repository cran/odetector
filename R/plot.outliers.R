plot.outliers <- function(x, ot=1,...){
  if(missing(x))
    stop("Missing input argument x")
  if(ot<1 & ot>4)
    stop("Approach number should be an integer ranges [1,4]")
  objo <- x
  if(!inherits(objo, "outliers")) 
    stop("The input argument 'x' should be an object of the 'outliers' class")
  X <- objo$X
  n <- nrow(X)
  if(ot==1){
    if(length(objo$outliers1)){
      pc <- rep("o", n)
      pc[objo$outliers1] <- "o"
      pcol <- rep("dodgerblue", n)
      pcol[objo$outliers1] <- "red"
      pcol <- adjustcolor(pcol, alpha.f = 0.7)
      plot(X, pch=pc, col=pcol, cex=1, main="Approach 1")
      text(X[objo$outliers1,], labels=objo$outliers1, pch=pc, col="black", pos=3, cex=0.5)
    }else{
      cat("No outliers to plot.\n")
    }
  }
  if(ot==2){
    if(length(objo$outliers2)){
      pc <- rep("o", n)
      pc[objo$outliers2] <- "o"
      pcol <- rep("dodgerblue", n)
      pcol[objo$outliers2] <- "red"
      pcol <- adjustcolor(pcol, alpha.f = 0.7)
      plot(X, pch=pc, col=pcol, cex=1, main="Approach 2")
      text(X[objo$outliers2,], labels=objo$outliers2, pch=pc, col="black", pos=3,cex=0.5)
    }else{
      cat("No outliers to plot.\n")
    }
  }
  if(ot==3){
    if(length(objo$outliers3)){
      pc <- rep("o", n)
      pc[objo$outliers3] <- "o"
      pcol <- rep("dodgerblue", n)
      pcol[objo$outliers3] <- "red"
      pcol <- adjustcolor(pcol, alpha.f = 0.7)
      plot(X, pch=pc, col=pcol, cex=1, main="Approach 3")
    }else{
      cat("No outliers to plot.\n")
    }
  }
  if(ot==4){
    if(length(objo$outliers4)){
      pc <- rep("o", n)
      pc[objo$outliers4] <- "o"
      pcol <- rep("dodgerblue", n)
      pcol[objo$outliers4] <- "red"
      pcol <- adjustcolor(pcol, alpha.f = 0.7)
      plot(X, pch=pc, col=pcol, cex=1, main="Approach 4")
     text(X[objo$outliers4,], labels=objo$outliers4, pch=pc, col="black", pos=3, cex=0.5)
    }else{
      cat("No outliers to plot.\n")
    }
  }
}
