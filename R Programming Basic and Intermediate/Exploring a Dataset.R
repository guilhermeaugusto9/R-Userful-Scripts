?read.csv

#escolhendo um arquivo clicando (o jeito mais fácil de todos, usar sempre)


stats<-read.csv(file.choose())
stats

# a forma em cima é a mais fácil de todas mas para título de conhecimento iremos registrar para consulta também os outros



#method2 Set wd and Read Data

getwd()

setwd("C:\\Users\\guilherme.augusto\\Documents\\R Programming A-Z\\")

getwd()
rm(stats)
stats<- read.csv("P2-Demographic-Data.csv")
stats


# o resultado é absolutamente o mesmo




setwd("C:\\Users\\guilherme.augusto\\Documents\\")
getwd()


#----------------------------------------------- exploring data --------------------------------------


stats

#Exsitem algumas funções básicas para explorar um dataset

nrow(stats)    # essa função mostra o número de linhas do dataset

# é muito importante para ver se todas as linhas foram importadas

ncol(stats)# essa função mostra o número de colunas do dataset

# é muito importante para ver se todas as colunas foram importadas


head(stats)   # essa função mostra as primeiras 5 linhas, para mostrar como é o dataframe


tail(stats)  # essa função mostra as últimas 5 linhas, para mostrar como é o dataframe

# é possível mudar o número de linhas do head apresentando por exemplo 10 linhas

head(stats, n=10)

# essa função mostra a estrutura dos dados 
str(stats)


#runif() não é run if é randm uniformemente haha


# a função summary mostra um resumo estatístico da base dados

summary(stats)






