# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()



fin <- read.csv("P3-Future-500-The-Dataset.csv",na.strings = c(""))  # essa parte seve para substiuir o vazio por NA para poder operacionalizar ele depois



# assim o R apresenta apenas as linhas em que vc esta filtrando

fin[which(fin$Revenue == 9746272),]


fin[which(fin$Employees==45),]


# agora iremos usar o is.na() para encontrar os dados perdidos ou NA


# lembrando que é impossivel fazer um filtro com NA ex: fin[fin$Expenses == NA], porque não se pode comparar nada com NA


# Então temos que usar uma função , ai entra o is.na ()


is.na(fin$Expenses) # assim ele testa se é verdadeiro ou falso então iremos usar esse statement como filtro

# filtro

fin[is.na(fin$Expenses),]



