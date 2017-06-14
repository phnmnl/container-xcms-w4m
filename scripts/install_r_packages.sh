#! /usr/bin/env Rscript

install.packages("rsm") 
install.packages("optparse")
install.packages("Rccp")
install.packages("snow")
install.packages("batch")
install.packages("devtools")

source("http://bioconductor.org/biocLite.R")

#install.packages("devtools")
#library("devtools")
#biocLite(c("mzR","CAMERA","xcms","BiocGenerics","Biobase","ProtGenerics","zlibbioc"))
biocLite(c("mzR","BiocGenerics","Biobase","ProtGenerics","zlibbioc","multtest"))

library("devtools")
install_github("sneumann/xcms",ref="7ef70598754cffc9e896ddb3358f62471e0d16cb")

biocLite("CAMERA")
remove.packages(c("devtools"))
