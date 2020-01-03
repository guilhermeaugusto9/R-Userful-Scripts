# THis tutorial starts at the line 310


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





# primeiramente vamos apagar a coluna com a data errada

util$Timestamp <- NULL

# para mudar a ordem vc declara o df de novo com a ordem

util <- util[, c(4,1,2,3)]

head(util, 12)






# what is a List


summary(util)


# Fazendo um subsseting para a maquina RL1

RL1<- util[util$Machine == "RL1",]

summary(RL1)

str(RL1)


# Transformando a coluna Machine em Factor de novo, isso é sempre necessário quanoo vc faz um subsseting

RL1$Machine <- factor(RL1$Machine)

summary(RL1)



# iniciando a construção da lista




# o que iremos fazer


#Character: Machine list
#Vector : (min, mean, max) , utilization for the month (excluding unknown hours
# Logical: Has utilization ever fallen below 90% ? TRUE/FALSE




# creating the vector (min, mean, max) , utilization for the month (excluding unknown hours o na.rm = TRUE faz essa útima parte

util_stats_rl1 <- c(min(RL1$Utilization, na.rm = TRUE),
                    mean(RL1$Utilization, na.rm = TRUE),  
                    max(RL1$Utilization, na.rm = TRUE))

util_stats_rl1





# Logical: Has utilization ever fallen below 90% ? TRUE/FALSE


which(RL1$Utilization <0.90)  # Esse código mostra quais as linhas em que acontece 


# para mostrar quantas vezes é só adicionar o lenght


length(which(RL1$Utilization <0.90))

# para que o resultado seja lógico ou seja Verdadeiro ou falso é só adicioar uma condição

length(which(RL1$Utilization <0.90)) >0 

# adicionamos isso a um obj para poder utilizar na lista posteriormente

util_under_90_flag <- length(which(RL1$Utilization <0.90)) >0 

util_under_90_flag

# para construir uma lista é muito simplessss



#existe uma função list que faz o trabalho 




list_rl1 <- list("RL1", util_stats_rl1, util_under_90_flag)
list_rl1



# visualização é um pouco diferente, para facilitar o entendimento é como se fosse um vetor vertical , cada topido da lista tem um index [[1]], [[2]] ,[[3]] e abaixo 
# um [1] com o preenchimento

# então uma lista de 3 elementos como a nossa fica assim


# [[1]]
# [1] elemento 1 da lista , posição 1

#[[2]]
#[1] elemento 2 da lista, posição 1

#[[3]]
#[1] elemento 3 da lista, poisição 1




# checando os nomes de uma lista

names(list_rl1)



# Para passar os nomes iremos setar, de acordo com a ordem 


names(list_rl1) <- c("Machines","Stats", "LowThreshold")

list_rl1


# Another way to name


rm(list_rl1)  # apagando para renomear


list_rl1 <- list(Machines = "RL1",Stats =  util_stats_rl1,LowThreshold =  util_under_90_flag)  # criando a lista novamente com os nomes antes 


list_rl1  # checando se ela foi criada






# adding and deleting components in a list


list_rl1


list_rl1[4] <- "New Information"

list_rl1


# another way to add a component via $


# we will add


# vector with all houres where utilization is unknow NA's

RL1[is.na(RL1$Utilization),]  # primeiro filtramos



# iremos adicionar na lista apenas os horários em que esta NA


RL1[is.na(RL1$Utilization),"PosixTime"]


# agora iremos adicionar um novo elemento a lista



list_rl1$UnknownHours<- RL1[is.na(RL1$Utilization),"PosixTime"]

list_rl1


# removing an component


list_rl1[4] <- NULL


list_rl1

# é importante notar que a numeração na lista muda, é ressetada, ou seja, se reoganiza



# adicionando um data frame na list



list_rl1$data <- RL1

list_rl1


# a função summary irá mostrar um resumo de como é essa lista


summary(list_rl1)



# para mostrar a estrutura da lista

str(list_rl1)



#-------------------------------- THE TUTORIAL STARTS HERE  ----------------------------------------------- 



# existem 3 maneiras principais de acessar os dados em uma lista




# 1 []  irá sempre retornar uma lista

# 2 [[]]  irá sempre retornar o objeto ou seja o que esta dentro dessa posição da lista

# 3 $ faz a mesma coisa do [[]] mas de uma maneira mais elegante 


list_rl1



# 1 []  irá sempre retornar uma lista

list_rl1[1]  # apresentou o nome da posição e o que esta dentro


# 2 [[]]  irá sempre retornar o objeto ou seja o que esta dentro dessa posição da lista


list_rl1[[1]]  # apresentou apenas o que esta dentro 



# 3 $ faz a mesma coisa do [[]] mas de uma maneira mais elegante 

list_rl1$Machines  # apresentou apenas o que esta dentro 



list_rl1[2]


# para comprovar que o list_rl1 é uma lista

typeof(list_rl1)


# para saber o tipo de uma coisa dentro da lista é preciso usar o [[ ]] ou $


typeof(list_rl1[[2]])


# how acess the 3rd elemtnet of the vector in [[2]]


list_rl1[[2]][3]  # Primeiro voce acessa a lista com o [[]] e depois acessa o elemento do vetor com []


# ou 

list_rl1$Stats[3]  # acessando a lista com $ e depois o elemento do vector com []


# para fazer um subsetting podemos utilizar [ ]


list_rl1[1] # ira trazer o primeiro elemento da lista

# mas é possível trazer mais de um 


# trazendo as 3 primeiras elementos da lista


list_rl1[1:3]

# trazendo o elemento 1 e 4


list_rl1[c(1,4)]


# criando um subsetting com os elementos nomeados como "Machine" e Stats


sublist <- list_rl1[c("Machines", "Stats")]
sublist


# é muito importante lembrar que o  [[ ]] não serve para o subsetting 














