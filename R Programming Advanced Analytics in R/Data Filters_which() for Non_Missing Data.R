# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()



fin <- read.csv("P3-Future-500-The-Dataset.csv",na.strings = c(""))  # essa parte seve para substiuir o vazio por NA para poder operacionalizar ele depois



# Filtering : using wich () for non - missing data 


head(fin)

fin[fin$Revenue == 9746272,]


# filtrando com o which


which(fin$Revenue == 9746272)


# assim o R apresenta apenas as linhas em que vc esta filtrando

fin[which(fin$Revenue == 9746272),]


fin[which(fin$Employees==45),]


