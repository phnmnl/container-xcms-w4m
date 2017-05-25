#! /usr/bin/env Rscript

install.packages("rsm") 
install.packages("optparse")
install.packages("Rccp")
install.packages("snow")
install.packages("batch")

source("http://bioconductor.org/biocLite.R")

#install.packages("devtools")
#library("devtools")
biocLite(c("mzR","CAMERA","xcms","BiocGenerics","Biobase","ProtGenerics","zlibbioc"))
