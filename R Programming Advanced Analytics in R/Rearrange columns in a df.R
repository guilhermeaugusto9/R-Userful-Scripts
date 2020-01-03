# THis tutorial starts at the line 87


#LISTS IN R


#Deliverbable  a lista with the faloowing components

#Character: Machine list
#Vector : (min, mean, max) , utilization for the month (excluding unknown hours
# Logical: Has utilization ever fallen below 90% ? TRUE/FALSE
#Vector:  ALL hours where utilization is unknown (NA'S)
#Dataframe for this machine
#Plot for all machines


# selecionando a pasta em que estão os arquivos

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()


# lendo o arquivo em um DF

util<- read.csv("P3-Machine-Utilization.csv")



# analizando as primeiras linhas

head(util,n =15)


# analizando a estrutura

str(util)

# resumo estatístico

summary(util)


# crianod uma coluna para utilização



util$Utilization <- 1-util$Percent.Idle


head(util, n = 15)





# primeiramente olhamos se o formato é dd/MM/YYYY OU MM/dd/YYYY






# existe uma convenção mundial em computação que se chama POXIs que garante a compatibilidade de horas datas e otras coisas, fazendo com que um programa rode
#em qualquer computador
# no R existe uma função para isso  POSIXct

#POSIXct mede o numero de segundos que passaram desde 1970 é um numero INT

# para ficar tudo igual iremos converter as datas em POSIXct()


as.POSIXct(util$Timestamp, format = "%d/%m/%Y %H:%M")





# adicionando a uma coluna a hora padrão


util$PosixTime <- as.POSIXct(util$Timestamp, format = "%d/%m/%Y %H:%M")

tail(util)


# -------------------------------- THE TUTORIAL STARTS HERE -------------------------------------------------------------


# primeiramente vamos apagar a coluna com a data errada

util$Timestamp <- NULL

# para mudar a ordem vc declara o df de novo com a ordem

util <- util[, c(4,1,2,3)]

head(util, 12)








