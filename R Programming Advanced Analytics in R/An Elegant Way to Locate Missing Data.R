# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()



fin <- read.csv("P3-Future-500-The-Dataset.csv",na.strings = c(""))  # essa parte seve para substiuir o vazio por NA para poder operacionalizar ele depois

# lendo o arquivo

fin
str(fin)

# visualizando dados vazios na base

head(fin,24)

fin$Profit <- as.numeric(as.character(fin$Profit))
str(fin)
summary(fin)

fin$Expenses <- gsub("Dollars", "", fin$Expenses)  # gsub ("O que voce quer substituir, "O que irá substituir", onde está o que sera sub)
head(fin)
fin$Expenses <- gsub(",", "", fin$Expenses)
head(fin)
str(fin)
fin$Revenue <- gsub("\\$", "", fin$Revenue)
head(fin)
fin$Revenue <- gsub(",", "", fin$Revenue)
head(fin)
str(fin)
fin$Growth <-gsub("%","",fin$Growth)
head(fin)
str(fin)
fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue  <- as.numeric(fin$Revenue)
fin$Growth   <- as.numeric(fin$Growth)

# a função que usaremos no primeiro momento é complete.cases() para checar se existe NA


fin[complete.cases(fin),]  # mostra todas as completas , sem NA


fin[!complete.cases(fin),]  # mostra as que tem valores vazios, por causa do ! antes , faz o contrário do outro 

# é importante lembrar que quando está vazio sem o NA o R entende que esta vazio


# então o primeiro a se fazer é trocar o vazio por NA



gsub("",NA,fin)

fin[!complete.cases(fin),]  # essa é a melhor maneira de achar os NA então e mais elegante

fin

str(fin)

