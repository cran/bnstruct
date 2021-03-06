% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/BN-methods.R
\name{wpdag.from.dag}
\alias{wpdag.from.dag}
\alias{wpdag.from.dag,BN-method}
\alias{wpdag.from.dag,BN}
\title{Initialize a WPDAG from a DAG.}
\usage{
wpdag.from.dag(x, layering = NULL, layer.struct = NULL)

\S4method{wpdag.from.dag}{BN}(x, layering = NULL, layer.struct = NULL)
}
\arguments{
\item{x}{a \code{\link{BN}} object.}

\item{layering}{vector containing the layers each node belongs to.}

\item{layer.struct}{\code{0/1} matrix for indicating which layers can contain parent nodes
for nodes in a layer (only for \code{mmhc}, \code{mmpc}).}
}
\value{
a \code{\link{BN}} object with an initialized \code{wpdag}.
}
\description{
Given a \code{\link{BN}} object with a \code{dag}, return a network
with its \code{wpdag} set as the CPDAG computed starting from the \code{dag}.
}
\examples{
\dontrun{
net <- learn.network(dataset, layering=layering, layer.struct=layer.struct)
wp.net <- wpdag.from.dag(net, layering, layer.struct=layer.struct)
}

}
\seealso{
\code{\link{dag.to.cpdag}}
}
