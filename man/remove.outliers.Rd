\name{remove.outliers}
\alias{remove.outliers}
\title{Remove outliers}
\usage{
  remove.outliers(x, ot=1, sc=FALSE)
}
\arguments{
  \item{x}{an object of \code{outliers} class containing the outliers to be removed.}
  \item{ot}{an integer specifying the outlier detection approach. The default is 1 for the Approach 1. For the other methods use 2 or 3. See \code{\link{detect.outliers}} for the details.}
  \item{sc}{a logical value for including the objects in the small clusters into removal process. The default is \option{FALSE}. Use \option{TRUE} for removing the objects in the small clusters.}
}
\description{
Removes the detected outliers from a data set.
}
\value{
 \item{Xr}{a numeric matrix containing the outliers-removed data set.}
}
\author{Zeynel Cebeci, Cagatay Cebeci, Yalcin Tahtali}
\seealso{
 \code{\link{detect.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{print.outliers}},
 \code{\link{summary.outliers}}
}
\examples{
# Load the dataset x3p4c and extract the first three columns to x
data(x3p4c)
x <- x3p4c[,1:3]

# For 4 clusters, run Unsupervised Possibilistic Fuzzy C-Means (UPFC) algorithm 
# of the package ppclust 
res.upfc <- ppclust::upfc(x, centers=4)

# Detect the outliers 
out <- detect.outliers(res.upfc)
 
# Remove the outliers 
Xr1 <- remove.outliers(out, ot=1)
print(Xr1)

# Remove the outliers including the collective outliers 
Xr2 <- remove.outliers(out, ot=1, sc=TRUE)
print(Xr2)
}
\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}
\keyword{cluster}
\keyword{multivariate}