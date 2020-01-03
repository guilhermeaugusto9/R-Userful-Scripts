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


