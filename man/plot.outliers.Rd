\name{plot.outliers}
\alias{plot.outliers}
\title{Plot outliers}
\usage{
\method{plot}{outliers}(x, ot=1, \dots)
}
\arguments{
  \item{x}{an object of \code{outliers} class containing the outliers to be plotted.}
  \item{ot}{an integer ranges [1,4] representing the outlier detection approach.}
  \item{\dots}{additional arguments for S3 method \code{plot}.}
}
\description{
Plots the outliers found in a data set.
}
\value{plots of the object of \code{outliers} class.}
\author{Zeynel Cebeci, Cagatay Cebeci, Yalcin Tahtali}
\seealso{
 \code{\link{detect.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}},
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
outs <- detect.outliers(res.upfc)
 
# Plot the outliers
plot(outs, ot=1)
}
\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}
\keyword{cluster}
\keyword{multivariate}
