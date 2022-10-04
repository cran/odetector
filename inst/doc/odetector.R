## ---- eval=FALSE, message=FALSE, warning=FALSE--------------------------------
#  install.packages("odetector")

## ---- eval=FALSE, message=FALSE, warning=FALSE--------------------------------
#  if(!require(devtools))
#    install.packages("devtools", repo="https://cloud.r-project.org")
#  devtools::install_github("zcebeci/odetector")

## ---- echo=TRUE, message=FALSE, warning=FALSE---------------------------------
library(odetector)

## ----echo=TRUE, message=FALSE, warning=FALSE, cols.print=5, rows.print=10-----
data(x3p4c)
head(x3p4c)
tail(x3p4c)

## ----fig.width=7, fig.height=6------------------------------------------------
pairs(x3p4c[,-4], col=x3p4c[,4]+1)

## ---- eval=FALSE, echo=TRUE, message=FALSE, warning=FALSE---------------------
#  if(!require(ppclust)){
#    install.packages("ppclust", repo="https://cloud.r-project.org");
#  }

## ---- echo=TRUE, message=FALSE, warning=FALSE---------------------------------
x <- x3p4c[,-4]
head(x)
tail(x)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
require(ppclust)
res.upfc <- upfc(x, centers=4)
head(res.upfc$t)

## ---- eval=FALSE, echo=TRUE, message=FALSE, warning=FALSE---------------------
#  if(!require(devtools))
#    install.packages("devtools", repo="https://cloud.r-project.org")
#    suppressMessages(devtools::install_github("zcebeci/fcvalid"))

## ---- eval=FALSE, echo=TRUE, message=FALSE, warning=FALSE---------------------
#   library(ppclust)
#   library(fcvalid)
#   c1 <- 2  #Starting number of clusters
#   c2 <- 5  #Final number of clusters
#   indnames <- c("PC","MPC","PE","XB","Kwon", "TSS", "CL", "FS", "PBMF","FSIL","FHV", "APD")
#   indvals <- matrix(ncol=length(indnames), nrow=(c2-c1+1))
#   colnames(indvals) <- indnames
#   rownames(indvals) <- paste0("c=", c1:c2)
#   i <- 1
#   for(c in c1:c2){
#    resfcm <- ppclust::fcm(x=x, centers=c, nstart=3)
#    indvals[i,1] <- pc(resfcm)
#    indvals[i,2] <- mpc(resfcm)
#    indvals[i,3] <- pe(resfcm)
#    indvals[i,4] <- xb(resfcm)
#    indvals[i,5] <- kwon(resfcm)
#    indvals[i,6] <- tss(resfcm)
#    indvals[i,7] <- cl(resfcm)
#    indvals[i,8] <- fs(resfcm)
#    indvals[i,9] <- pbm(resfcm)
#    indvals[i,10] <- si(resfcm)$sif
#    indvals[i,11] <- fhv(resfcm)
#    indvals[i,12] <- apd(resfcm)
#    i <- i+1
#   }

## ---- eval=FALSE, message=FALSE, warning=FALSE--------------------------------
#   # Display the fuzzy indices in various runs of FCM
#   indvals <- round(t(indvals),3)
#   print(indvals)
#   # Optimal number of clusters with Fuzzy Hypervolume (FHV) index
#   optk <- colnames(indvals)[which.min(indvals["FHV",])]
#   optk
#   k <- unname(which.min(indvals["FHV",])) + 1
#   k

## ----eval=FALSE, echo=TRUE, message=FALSE, warning=FALSE----------------------
#  res.upfc <- upfc(x, centers=k)
#  head(res.upfc$t)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
res.out <- detect.outliers(res.upfc)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
res.out <- detect.outliers(res.upfc, alpha=0.05, alpha2=0.4)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
str(res.out)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
res.out$outliers1
res.out$outliers2

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
print(res.out)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
summary(res.out)

## ----fig.width=7, fig.height=6------------------------------------------------
plot(res.out, ot=1)

## ----fig.width=7, fig.height=6------------------------------------------------
plot(res.out, ot=2)

## ----fig.width=7, fig.height=6------------------------------------------------
pairs(res.out)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
Xr <- remove.outliers(res.out, sc=FALSE)

## ----fig.width=7, fig.height=6------------------------------------------------
pairs(Xr, col=x3p4c[,4]+1)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
res.out <- detect.outliers(res.upfc, alpha=0.1)

## ----echo=TRUE, message=FALSE, warning=FALSE----------------------------------
res.out$outliers1
plot(res.out, ot=1)

