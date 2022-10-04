\name{print.outliers}
\alias{print.outliers}
\title{Print outliers}
\usage{
\method{print}{outliers}(x, \dots)
}
\arguments{
  \item{x}{an object of \code{outliers} class containing the outliers to be printed. See \code{\link{detect.outliers}} for  details.}
  \item{\dots}{additional arguments for S3 method \code{print}.}
}
\description{
Prints the outliers found in a data set.
}
\value{Print out of the object of \code{outliers} class.}
\author{Zeynel Cebeci, Cagatay Cebeci, Yalcin Tahtali}
\seealso{
 \code{\link{detect.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{remove.outliers}},
 \code{\link{summary.outliers}},
 \code{\link[ppclust]{upfc}}
}
\examples{
# Load the dataset x3p4c and use the first three columns 
data(x3p4c)
x <- x3p4c[,1:3]

# For 4 clusters, run Unsupervised Possibilistic Fuzzy C-Means (UPFC) algorithm 
# of the package ppclust 
res.upfc <- ppclust::upfc(x, centers=4)

# Detect the outliers 
out <- detect.outliers(res.upfc)
 
# Print the outliers
print(out)
}
\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}
\keyword{cluster}
\keyword{multivariate}
