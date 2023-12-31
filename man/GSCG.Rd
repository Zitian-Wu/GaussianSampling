% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{GSCG}
\alias{GSCG}
\title{Conjugate Gradient Sampler}
\usage{
GSCG(mu, Q, epsilon, omega0)
}
\arguments{
\item{mu}{is mean, d-dimensional.}

\item{Q}{is arbitrary precision matrix.}

\item{epsilon}{is the tolerance threshold used to stop the conjugate gradient sampler.}

\item{omega0}{is initialization.}
}
\description{
Approx. square root sampler using Lanczos decomposition
}
\examples{
mu <- 1:10
Q <- diag(2,10,10); Q[4,1]<-Q[1,4]<-1;
GSCG(mu,Q,1e-4,rep(0,10))
}
