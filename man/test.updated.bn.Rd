% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/InferenceEngine-methods.R
\name{test.updated.bn}
\alias{test.updated.bn}
\alias{test.updated.bn,InferenceEngine-method}
\alias{test.updated.bn,InferenceEngine}
\title{check if an updated \code{\link{BN}} is present in an \code{\link{InferenceEngine}}.}
\usage{
test.updated.bn(x)

\S4method{test.updated.bn}{InferenceEngine}(x)
}
\arguments{
\item{x}{an \code{\link{InferenceEngine}}.}
}
\value{
\code{TRUE} if an updated network is contained in the InferenceEngine, \code{FALSE} otherwise.
}
\description{
Check if an InferenceEngine actually contains an updated network, in order to provide the chance of
a fallback and use the original network if no belief propagation has been performed.
An \code{\link{InferenceEngine}} built specifying a set of interventions will contain
an updated \code{\link{BN}} with altered structure and no conditional probability tables
(unless they are computed by a belief propagation operation.)
}
\examples{
\dontrun{
dataset <- BNDataset("file.header", "file.data")
bn <- BN(dataset)
ie <- InferenceEngine(bn)
test.updated.bn(ie) # FALSE

observations(ie) <- list("observed.vars"=("A","G","X"), "observed.vals"=c(1,2,1))
ie <- belief.propagation(ie)
test.updated.bn(ie) # TRUE

interventions <- list("intervention.vars"=("A","G","X"), "intervention.vals"=c(1,2,1))
ie2 <- InferenceEngine(bn, interventions = interventions)
test.updated.bn(ie2) # TRUE
}

}
