% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NonparTrawlEstimation.R
\name{trawl_deriv}
\alias{trawl_deriv}
\title{Estimating the derivative of the trawl function using the
empirical derivative}
\usage{
trawl_deriv(data, Delta, lag = 100)
}
\arguments{
\item{data}{The data set used to compute the derivative of the trawl function}

\item{Delta}{The width Delta of the observation grid}

\item{lag}{The lag until which the trawl function should be estimated}
}
\value{
The function returns the lag-dimensional vector
\eqn{(\hat a'(0), \hat a'(\Delta), \ldots, \hat a'((lag-1) \Delta)).}
}
\description{
This function estimates the derivative of the trawl function using
the empirical derivative of the trawl function.
}
\details{
According to
Sauri and Veraart (2022), the derivative of the trawl function can
be estimated based on observations
\eqn{X_0, X_{\Delta_n}, \ldots, X_{(n-1)\Delta_n}}  by
\deqn{\widehat a(t)=\frac{1}{\Delta_{n}}
(\hat a(t+\Delta_n)-\hat a(\Delta_n)),}
for \eqn{\Delta_nl\leq t < (l+1)\Delta_n}.
}
\examples{
##Simulate a trawl process
##Determine the sampling grid
my_n <- 1000
my_delta <- 0.1
my_t <- my_n*my_delta

###Choose the model parameter
#Exponential trawl function:
my_lambda <- 2
#Poisson marginal distribution trawl
my_v <- 1

#Set the seed
set.seed(123)
#Simulate the trawl process
Poi_data <- sim_weighted_trawl(my_n, my_delta,
                               "Exp", my_lambda, "Poi", my_v)$path

#Estimate the trawl function
my_lag <- 100+1
trawl <- nonpar_trawlest(Poi_data, my_delta, lag=my_lag)$a_hat

#Estimate the derivative of the trawl function
trawl_deriv <- trawl_deriv(Poi_data, my_delta, lag=100)
}
