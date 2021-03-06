% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/InferenceEngine-methods.R
\name{marginals}
\alias{marginals}
\alias{marginals,InferenceEngine-method}
\alias{marginals,InferenceEngine}
\title{compute the list of inferred marginals of a BN.}
\usage{
marginals(x, ...)

\S4method{marginals}{InferenceEngine}(x, ...)
}
\arguments{
\item{x}{an \code{\link{InferenceEngine}}}

\item{...}{potential further arguments of methods.}
}
\value{
a list containing the marginals of each variable, as probability tables.
}
\description{
Given an \code{\link{InferenceEngine}}, it returns a list containing the marginals for the variables
in the network, according to the propagated beliefs.
}
\examples{
\dontrun{
eng <- InferenceEngine(net)
marginals(eng)
}

}
