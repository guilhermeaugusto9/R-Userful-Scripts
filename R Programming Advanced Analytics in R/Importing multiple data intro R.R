# selecionando a pasta em que estão os arquivos

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R/Weather Data")
getwd()


# read data


Chicaco <- read.csv("Chicago-F.csv")

Chicaco <- read.csv("Chicago-F.csv", row.names = 1)  # para usar a primeira linha como nome das colunas vc usa o row.names = 1


NewYork <- read.csv("NewYork-F.csv", row.names = 1)

Houston <- read.csv("Houston-F.csv", row.names = 1)

SanFrancisco<- read.csv("SanFrancisco-F.csv", row.names = 1)

# checando o que foi importado

Chicaco
NewYork
Houston
SanFrancisco


# Check if are DataFrames

is.data.frame(Chicaco)


# iremos mudar para Matrizes pois será mais fácil para trabalhar, como são poucas linhas com as colunas iguais

Chicaco <- as.matrix(Chicaco)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)



# Criando uma lista com as matrizes criadas, já nomeei os componentes para facilitar




Weather <- list(Chicago = Chicaco,NewYork =  NewYork, Houston = Houston,SanFrancisco =  SanFrancisco)

Weather


# Lets acess houston

Weather$Houston


