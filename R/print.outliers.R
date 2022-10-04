print.outliers <- function(x, ...){
  if(missing(x))
    stop("Missing input argument x")
  objo <- x
  if(!inherits(objo, "outliers")) 
    stop("The input argument 'x' should be an object of the 'outliers' class")
  X <- objo$X
  cat("Outliers from ", deparse(objo$call), "\n")
  cat(rep("-", 80))
  cat("\nList of outliers computed with Approach 1 \n")
  if(length(objo$outliers1) > 0){
    print(X[objo$outliers1,])
    cat("\nList of data set with the outliers (marked with *) by using Approach 1 \n")
    for(i in 1:nrow(X)){
      di <- sprintf("%03.3f", X[i,])
      if(is.element(i, objo$outliers1))
        cat("*", di, "\n")
      else
        cat(" ", di, "\n")
    }
  }else{
    cat("No outliers detected.\n")   
  } 
  cat("\nList of outliers computed with Approach 2 \n")
  if(length(objo$outliers2) > 0){
    print(X[objo$outliers2,])
    cat("\nList of data set with the outliers (marked with *) by using Approach 2\n")
    for(i in 1:nrow(X)){
      di <- sprintf("%03.3f", X[i,])
      if(is.element(i, objo$outliers2))
        cat("*", di, "\n")
      else
        cat(" ", di, "\n")
    }
  }else{
    cat("No outliers detected.\n")   
  }   
  cat("\nList of outliers computed with Approach 3 \n")
  if(length(objo$outliers3) > 0){
    print(X[objo$outliers3,])
    cat("\nList of data set with the outliers (marked with *) by using Approach 3\n")
    for(i in 1:nrow(X)){
      di <- sprintf("%03.3f", X[i,])
      if(is.element(i, objo$outliers3))
        cat("*", di, "\n")
      else
        cat(" ", di, "\n")
    }
  }else{
    cat("No outliers detected.\n")   
  } 
  cat("\nList of outliers computed with Approach 4 \n")
  if(length(objo$outliers4) > 0){
    print(X[objo$outliers4,])
    cat("\nList of data set with the outliers (marked with *) by using Approach 4\n")
    for(i in 1:nrow(X)){
      di <- sprintf("%03.3f", X[i,])
      if(is.element(i, objo$outliers4))
        cat("*", di, "\n")
      else
        cat(" ", di, "\n")
    }
  }else{
    cat("No outliers detected.\n")   
  } 
  invisible(objo)
}
