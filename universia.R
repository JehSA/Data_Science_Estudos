library(readxl)
library(genderBR)
library(readr)
library(dplyr)

citation('genderBR')

setwd("C:/Users/jefferson.almeida/OneDrive - NTT/Desktop/Pessoal/Análise - Universia")
dados <- read_excel("Base.xlsx", sheet = "dados")

name <- chartr("áéíóúÁÉÍÓÚýÝàèìòùÀÈÌÒÙâêîôûÂÊÎÔÛãõÃÕñÑäëïöüÄËÏÖÜÿçÇ",
               "aeiouaeiouyyaeiouaeiouaeiouaeiouaoaonnaeiouaeiouycc", 
               dados$Nome)
dados <- data.frame(name, get_gender(name), dados$Cidade, toupper(dados$Estado), 
                    dados$Nascimento, dados$Raca, dados$Sigla, dados$IES, 
                    dados$Admissao,dados$Termino)
dados

write.table(dados, file = "BaseT.csv", sep = ",", na = "", quote = TRUE, row.names = FALSE, eol = "\r")















