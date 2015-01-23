\name{SI2}
\alias{SI2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Flowering synchrony index of Augspurger (1983)
}
\description{
It measures the extent of overlapping in the flowering periods among pairs of individuals in a population.
}
\usage{
SI2(dd, pop, ind)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dd}{
Flowering data.
}
  \item{pop}{
Research scale, such as Population, individual, inflorescence, single flowers.
}
  \item{ind}{
ID ofindividual or inflorescence.
}
}
\details{
si=(1/(n-1))*(1/fi)sum(ej);(j=1:n)
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{n}{The number of individuals in the population.}
  \item{fi}{The number of days individual i was flowering.}
  \item{ej}{The number of days that individuals i and j are flowering synchronously, with j != i.}
  \item{bij}{Number of days on which at least one of them (j and/or i) is flowering.}
  \item{si}{Synchrony index,from 0 (total lack of synchrony) to 1 (perfect synchrony).}
%% ...
}
\references{
  {[1]}{Augspurger, C. K. (1983). Phenology, flowering synchrony and fruit set of six neotropical shrubs. Biotropica 15: 257~267.}
  }
\author{
WANG,XIE
}
\note{
SI2 has been criticized for its dependence on flowering duration because the factor 1/fi increases the level of synchrony when flowering duration decreases.
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
C=SI2(dd,as.matrix(pop),as.matrix(ind))
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~synchrony }
\keyword{ ~SI2 }
