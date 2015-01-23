\name{fCV}
\alias{fCV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The coefficient of variation at population level
}
\description{
It used to quantify the pulsed flowering phenology on the population level. It has been used widely in mast seeding/mast flowering research to estimate the degree of annual variation in seed output within a population.
}
\usage{
fCV(dd, pop)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dd}{
Flowering data.
}
  \item{pop}{
ID of population.
}
}
\details{
cv=sqrt((1/(n-1))*sum(xpt-mean(xpt))^2)/mean(xpt);(t=1:n)
}
\value{
  \item{cv}{measure of temporal variation in flowering}
  \item{n}{the number of days individual i was flowering}
  \item{x}{the total number of open flowers per day t and population p}
  \item{t}{flowering day}
}
\references{
  {[1]}{Silvertown JW. The evolutionary ecology of mast seeding in trees. Biological Journal of the Linnean Society. 1980;14:235~250.}
  {[2]}{Kelly D. The evolutionary ecology of mast seeding. Trends in Ecology & Evolution. 1994;9:465~470.}
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
ind=c("1","2","1","2")
dd=rbind(a1,a2,a3,a4)
colnames(dd)=c("D5/1","D5/2","D5/3","D5/4","D5/5","D5/6","D5/7")
C=fCV(dd,pop)
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~synchrony }
\keyword{ ~fCV }
