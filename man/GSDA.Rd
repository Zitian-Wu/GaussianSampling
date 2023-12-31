% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{GSDA}
\alias{GSDA}
\title{Gibbs sampler based on exact data augmentation}
\usage{
GSDA(mu, Q1, G1, Lambda1, total_itr, theta0, method, omega)
}
\arguments{
\item{mu}{mu is mean, d-dimensional.}

\item{G1, Lambda1}{Q1 = G1T * Lambda1 * G1}

\item{total_itr}{total_itr is the total itration of Gibbs sampler}

\item{theta0}{theta0 is initialization.}

\item{method}{method is matrix splitting approach to choose within "EDA" and "GEDA".}

\item{omega}{omega is less than the inverse of spectral norm of Q1}

\item{Q1:}{Q = Q1 + Q2.}

\item{Lambda1:}{Q1 = G1T * Lambda1 * G1}
}
\description{
MCMC samplers whose invariant distributions are approximations
}
\examples{
mu <- 1:10
Q <- diag(2,10,10);
Q2 <- diag(1,10,10);
Q1 <- diag(1,10,10);
Lambda1 <- diag(eigen(Q1)$values)
G1 <- t(matrix(eigen(Q1)$vectors,10,10))
GSDA(mu,Q1,G1,Lambda1,10,rep(0,10),"GEDA", 1)
}
