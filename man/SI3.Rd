\name{SI3}
\alias{SI3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Among-individual synchrony index of Koenig et al. (2003)
}
\description{
The mean of all pairwise Pearson correlations coefficients (ri) of the numbers of open flowers per day (xti) of all individuals within a population.
}
\usage{
SI3(dd, pop, ind)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dd}{
Flowering data.
}
  \item{pop}{
ID of population.
}
  \item{ind}{
ID of individual.
}
}
\details{
si3=mean(cor(xit))
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{si3}{Among-individual synchrony index of Koenig (2003).}
  \item{ri}{All pairwise Pearson correlations coefficients (ri) of xit.}
  \item{xit}{The numbers of open flowers per day. }
%% ...
}
\references{
  {[1]}{Koenig WD, Kelly D, Sork VL, Duncan RP, Elkinton JS, Peltonen MS, Westfall RD. Dissecting components of population-level variation in seed production and the evolution of masting behavior. Oikos. 2003;102:581~591.}
  }
\author{
WANG,XIE
}
\note{
nothing
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
nothing
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
C=SI3(dd,as.matrix(pop),as.matrix(ind))
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~synchrony }
\keyword{ ~SI3 }
