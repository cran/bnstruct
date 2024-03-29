% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/InferenceEngine-methods.R
\docType{methods}
\name{interventions<-}
\alias{interventions<-}
\alias{interventions<-,InferenceEngine-method}
\title{set the list of interventions for an \code{\link{InferenceEngine}}.}
\usage{
interventions(x) <- value

\S4method{interventions}{InferenceEngine}(x) <- value
}
\arguments{
\item{x}{an \code{\link{InferenceEngine}}.}

\item{value}{the list of interventions of the \code{\link{InferenceEngine}}.}
}
\description{
Add a list of interventions to an InferenceEngine, using a list composed by the two following vectors:
\describe{
\item{\code{intervention.vars}}{vector of the variables we manipulate;}
\item{\code{intervention.vals}}{vector of values for the variables in \code{observed.vars} in the corresponding position.}
}
}
\details{
An intervention can be applied only when building an \code{\link{InferenceEngine}}.

In case of multiple interventions of the same variable, the last intervention is the one used.
}
