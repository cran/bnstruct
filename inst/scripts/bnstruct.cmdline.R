#!/usr/bin/R

library("bnstruct")

args <- commandArgs(trailingOnly=TRUE)

# setup defaults
algo         <- "mmhc"
scoring.func <- "BDeu"
# end defaults

i      <- 1
n.args <- length(args)
for (i in 1:n.args) {

  if (args[i] == "--algo") {
    i <- i + 1
    algo <- args[i]
  }

  if (args[i] == "--scoring.func") {
    i <- i + 1
    scoring.func <- args[i]
  }

}
