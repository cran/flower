\name{flower-package}
\alias{flower}
\alias{flower}
\docType{package}
\title{
Tools for characterizing flowering traits
}
\description{
Flowering is an important life history trait of flowering plants. It has been mainly analyzed with respect to flowering onset and duration of flowering. This tools provide some functions to compute the temporal distribution of an flowering individual related to other population members. fCV() measures the temporal variation in flowering. RIind() measures the rank order of flowering for individual plants within a population. SI(), SI2(), SI3(), and SI4() calculate flowering synchrony with different methods.
}
\details{
\tabular{ll}{
Package: \tab flower\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-01-23\cr
License: \tab GPL(>=1.0)\cr
}
}
\author{
WANG,Xie
Maintainer: WANG,Xie <wangxiechangde@hotmail.com>
}
\references{
Michalski SG, Durka W. Synchronous Pulsed Flowering: Analysis of the Flowering Phenology in Juncus (Juncaceae). Annals of Botany 2007;100(6):1271-1285. doi:10.1093/aob/mcm206.
}
\keyword{ flower }
\seealso{
flower
}
\examples{
a1=c(0,1,1,1,0,0,0)
a2=c(0,1,0,1,1,0,0)
a3=c(0,0,0,1,1,1,0)
a4=c(1,0,0,1,1,0,1)
a5=c(0,0,1,1,1,0,1)
a6=c(0,0,0,1,1,1,1)
pop=c("pop1","pop1","pop1","pop2","pop2","pop2")
ind=c(1,2,3,1,2,3)
dd=rbind(a1,a2,a3,a4,a5,a6)
colnames(dd)=c("D5/1","D5/2","D5/3","D5/4","D5/5","D5/6","D5/7")
#the flowering synchrony index
R0=SI(dd,pop)
R0
R1=SI2_onepop(dd,as.matrix(ind))
R1
R2=SI2(dd,as.matrix(pop),as.matrix(ind))
R2
R3=SI3(dd,as.matrix(pop),as.matrix(ind))
R3
R4=SI4(dd,as.matrix(pop),as.matrix(ind))
R4
#the rank order of flowering 
R5=RIind(dd,pop,ind)
R5
#the pulsed flowering phenology
R6=fCV(dd,pop)
R6
}
