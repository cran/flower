\name{SI}
\alias{SI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Flowering synchrony index of Albert et al.(2001)
}
\description{
Flowering synchrony was calculated considering all pairs of plants or poluplation.
}
\usage{
SI(dd, pop)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dd}{
Flowering data.
}
  \item{pop}{
Research scale, such as Population, individual, inflorescence, single flowers.
}
}
\details{
si=(1/(n-1))*sum(aij/bij)
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{m}{number of record days}
  \item{n}{number of group levels}
  \item{f}{names of group levels}
  \item{aij}{number of days on which j and i individuals are simultaneously flowering}
  \item{bij}{number of days on which at least one of them (j and/or i) is flowering}
  \item{si}{synchrony index,this index ranges from 0 (no synchrony) to 1 (flowering overlap is complete)}
%% ...
}
\references{
  {[1]}{Albert MJ, Escudero A, Iriondo JM. Female reproductive success of narrow endemic Erodium paularense in contrasting microhabitats. Ecology.2001,82,1734~1747.}

  {[2]}{Augspurger CK. Reproductive synchrony of a tropical shrub: experimental studies on effects of pollinators and seed predators on Hybanthus prunifolius (Violaceae),Ecology.1981,62,775~788.}
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
dd=rbind(a1,a2,a3,a4)
colnames(dd)=c("D5/1","D5/2","D5/3","D5/4","D5/5","D5/6","D5/7")
C=SI(dd,pop)
C
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~flowering }
\keyword{ ~synchrony }
\keyword{ ~SI }
