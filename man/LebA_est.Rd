% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NonparTrawlEstimation.R
\name{LebA_est}
\alias{LebA_est}
\title{Nonparametric estimation of the trawl set Leb(A)}
\usage{
LebA_est(data, Delta, biascor = FALSE)
}
\arguments{
\item{data}{Data to be used in the trawl function estimation.}

\item{Delta}{Width of the grid on which we observe the data}

\item{biascor}{A binary variable determining whether a bias correction should
be computed, the default is FALSE}
}
\value{
The estimated Lebesgue measure of the trawl set
}
\description{
This function estimates the size of the trawl set given by Leb(A).
}
\details{
Estimation of the trawl function using the methodology proposed in
Sauri and Veraart (2022).
}
\examples{
\donttest{
##Simulate a trawl process
##Determine the sampling grid
my_n <- 5000
my_delta <- 0.1
my_t <- my_n*my_delta

###Choose the model parameter
#Exponential trawl function:
my_lambda <- 2
#Poisson marginal distribution trawl
my_v <- 1

#Set the seed
set.seed(1726)
#Simulate the trawl process
Poi_data<-ambit::sim_weighted_trawl(my_n, my_delta, "Exp", my_lambda, "Poi", my_v)$path

#Estimate the trawl set without bias correction
LebA1 <-LebA_est(Poi_data, my_delta)
LebA1

#Estimate the trawl set with bias correction
LebA2 <-LebA_est(Poi_data, my_delta, biascor=TRUE)
LebA2

#Note that Leb(A)=1/my_lambda for an exponential trawl
}
}
