\name{x3p4c}
\alias{x3p4c}
\docType{data}
\title{
Synthetic data set consists of three variables with four clusters
}
\description{
A synthetic data set which was created by using the R package \sQuote{MixSim} (Melnykov et al, 2013). It consists of three continous variables forming four clusters. The last ten rows between Line 121 and 130 of the data set contains the outliers which are labeled as the class "0". 
}
\usage{data(x3p4c)}
\format{A data frame with 130 rows and 3 numeric variables:
 \describe{
  \item{p1}{a numeric continous variable}
  \item{p2}{a numeric continous variable}
  \item{p3}{a numeric continous variable}
  \item{cl}{an integer variable containing the class labels. While the label \option{0} represents the generated outliers, the labels \option{1-4} stand for the classes of the clusters.}
 }
}
\note{
The data set \code{x3p4c} is recommended to learn the outlier detection algorithms. 
}
\references{
Melnykov, V., Chen,W-C. & Maitra, R. (2013). MixSim: An R package for simulating data to study performance of clustering algorithms. \emph{Journal of Statistical Software}, 51(12):1-25.
}
\examples{
data(x3p4c)
# Descriptive statistics of the data set
summary(x3p4c)
# Plot the data set
pairs(x3p4c[,-4], col=x3p4c[,4], pch=19, cex=2)
}
\concept{synthetic datasets}
\concept{clustering}
\concept{cluster analysis}
\keyword{datasets}
