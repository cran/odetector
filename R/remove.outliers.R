remove.outliers <- function(x, ot=1, sc=FALSE){
  if(missing(x))
    stop("Missing input argument x")
  objo <- x
  if(!inherits(objo, "outliers")) 
    stop("The input argument 'x' should be an object of the 'outliers' class")
  X <- objo$X
  n <- nrow(X)
  if(missing(ot))
    ot <- 1
  if(ot==1)
    outliers <- objo$outliers1
  else if(ot==2)
    outliers <- objo$outliers2
  else if(ot==3)
    outliers <- objo$outliers3
  if(sc)
    outliers <- c(outliers, objo$outliers4)
  return(Xr=X[-outliers,])
}

