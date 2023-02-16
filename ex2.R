library(lpSolve)
library(esquisse)
library(ggplot2)


funcao_objetivo <- c(5, 2)
restricoes <- matrix(c(2, 1,
                       10, 12), ncol = 2, byrow = T)
restricoes_dir <- c("<=", "<=")
restricoes_rhs <- c(6, 60)

res_modelo <- lp("max", funcao_objetivo, restricoes, restricoes_dir, restricoes_rhs, compute.sens = T)

res_modelo$solution

options("scipen"=100, digits = 4)

res_modelo

esquisse(res_modelo)

