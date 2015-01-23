\name{SI4}
\alias{SI4}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
An alternative synchronization index of Marquis (1988)
}
\description{
SI4 thus facilitates comparison between species irrespective of flowering duration.
}
\usage{
SI4(dd, pop, ind)
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
si4=sum(xit/bit)*pt;bit=sum(xit);t=1:n
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{si4}{An alternative synchronization index of Marquis (1988).}
  \item{xit}{The numbers of open flowers per day. }
  \item{bit}{The total number of flowers of individual i during the whole flowering period. }
  \item{pt}{The proportion of all marked stems (inflorescence or individual) in bloom at day t. }
  \item{t}{Day. }
%% ...
}
\references{
  {[1]}{Marquis RJ. Phenologcal variation in the Neotropical understory shrub Piper arieianum: causes and consequences. Ecology. 1988;69:1552~1565.}
  {[2]}{Bolmgren K. The use of synchronization measures in studies of plant reproduction phenology. Oikos. 1998;82:411~415.}
  }
\author{
WANG,XIE
}
\note{
SI4 is a function of the numbers of open flowers per plant in contrast to Augspurger's measure SI2 which uses the mere information on whether a plant is flowering or not. SI4 accounts for full effects of variation in both the within-individual and the between-individual flowering patterns, and eventually includes the overlap of the individual flowering with the flowering of other individuals as an aspect of cross-fertilization (Bolmgren, 1998). 
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
C=SI4(dd,as.matrix(pop),as.matrix(ind))
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~synchrony }
\keyword{ ~SI4 }
