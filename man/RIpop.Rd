\name{RIpop}
\alias{RIpop}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Flowering phenology index of Mahoro (2002) at poplulation level
}
\description{
Relative to the formula of Mahoro (2002),we suggested the reference object (b) calculated in a polulation was better than in a individua. It measures the rank order of flowering for individual plants within a population.
}
\usage{
RIpop(dd, pop, ind)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dd}{
Flowering data.
}
  \item{pop}{
Group of Population.
}
  \item{ind}{
ID of individual.
}
}
\details{
ri=sum(aij/bi);(j=1:p)
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{i}{individuals}
  \item{j}{time during the flowering from beginning to pike of flowering p}
  \item{r}{the rank of each individual}
  \item{aij}{flowers that had already open in the individual by the jth census day}
  \item{bi}{the total number of flowers opening in the individual during the season}
  \item{xij}{xij=aij/bi}
%% ...
}
\references{
  {[1]}{Mahoro, S. (2002). Individual flowering schedule, fruit set, and flower and seed predation in Vaccinium hirtum Thunb. (Ericaceae). Can. J. Bot. 80: 82-92. }
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
a4=c(0,0,0,1,1,0,1)
pop=c("pop1","pop1","pop2","pop2")
ind=c(1,2,1,2)
dd=rbind(a1,a2,a3,a4)
colnames(dd)=c("D5/1","D5/2","D5/3","D5/4","D5/5","D5/6","D5/7")
C=RIpop(dd,pop,ind)
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~phenology }
\keyword{ ~RIpop }