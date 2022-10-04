\name{odetector-package}
\alias{odetector-package}
\docType{package}
\title{Outlier Detection Using Fuzzy and Possibilistic Clustering Algorithms}

\description{
An object is an "outlier" if it remarkably deviates from the other objects in a data set. Outlier detection is a process to identify outliers with the methods based on distance measures, clustering and spatial methods (Ben-Gal, 2005). This package introduces the functions for some novel approaches to detect the outliers based on the typicality degrees, obtained using the fuzzy and possibilistic clustering algorithms, i.e, the Unsupervised Possibilistic Fuzzy C-Means clustering algorithm (Wu et al, 2010).
}

\details{
Although it is mainly called as outlier detection or anomaly detection, there are many synonym terms of outlier detection in the different application domains, i.e., fraud detection, discordants detection, exception mining, aberration detection, surprise detection, peculiarity detection or contaminant detection etc.  

Outlier detection methods/algorithms can be classified with different taxonomies. In a common taxonomy, they are categorized as  clustering-based methods, distance based methods and density based methods. Clustering-based methods divides data objects into clusters and seeks the objects which are not typical members of any clusters. The novel approaches applied in this package use typicality degrees from a possibilistic and fuzzy clustering algorithms. These approaches are basically decide the atypicality of data points. For example, an object is decided to be atypical if its average possibilistic membership degree to all clusters is less than a pre-defined threshold typicality degree. The objects are labeled as the outliers if they satify the above rule.
}

\references{
Ben-Gal, I. (2005). Outlier detection, in \emph{Maimon, O. & Rockach, L. (Eds.) Data Mining and
 Knowledge Discovery Handbook: A Complete Guide for Practitioners and Researchers}, Kluwer Academic Publishers, <ISBN 0-387-24435-2>. 

Wu, X., Wu, B., Sun, J. & Fu, H. (2010). Unsupervised possibilistic fuzzy clustering. \emph{J. of Information & Computational Sci.}, 7 (5): 1075-1080.
}

\author{Zeynel Cebeci, Cagatay Cebeci, Yalcin Tahtali}

\seealso{
 \code{\link[ppclust]{upfc}},
 \code{\link{detect.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}},
 \code{\link{summary.outliers}}
}

\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}

\keyword{cluster}
\keyword{multivariate}