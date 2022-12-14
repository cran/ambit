% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SupportFunctions.R
\name{my_results}
\alias{my_results}
\title{my_results}
\usage{
my_results(x, sd = 1, digits = 3)
}
\arguments{
\item{x}{data}

\item{sd}{Optional parameter giving the standard deviation of the normal
distribution used for computing the coverage probabilities}

\item{digits}{Optional parameter to how many digits the results
should be rounded, the default is three.}
}
\value{
The vector of the sample mean, sample standard deviation
and the coverage probabilities at level 75\%, 80\%, 85\%, 90\%, 95\%, 99\%
compared to the standard normal quantiles.
}
\description{
Returns summary statistics
}
\details{
This functions returns the sample mean, sample standard deviation
and the coverage probabilities at level 75\%, 80\%, 85\%, 90\%, 95\%, 99\%
compared to the standard normal quantiles.
}
\examples{
#Simulate i.i.d.~standard normal data
set.seed(456)
data <- rnorm(10000)
#Display the sample mean, standard deviation and coverage probabilities:
my_results(data)
}
