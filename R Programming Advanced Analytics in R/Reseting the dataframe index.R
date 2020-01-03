# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()



fin <- read.csv("P3-Future-500-The-Dataset.csv",na.strings = c(""))  # essa parte seve para substiuir o vazio por NA para poder operacionalizar ele depois

# removing records with missign data

# primeiramente vamos fazer um backup da base para podermos usar caso precise, sempre faça isso

fin_backup <- fin


fin[!complete.cases(fin),]


fin[is.na(fin$Industry),]  # assim vc visualiza as  linhas em que existem valores NA para aquela coluna


fin[!is.na(fin$Industry),] # assi m vc visualiza as linhas em que não existem valores NA para aquela coluna


# para retirar as linhas em que existem NA para aquela coluna específica, é só declarar novamente a base com a condição acima do filtro




fin <- fin[!is.na(fin$Industry),]  # declarando sem os valores NA

fin                                # vizualizando a base
fin[is.na(fin$Industry),]          # comprovando que não existem mais linhas com NA  Resultado = <0 linhas> (ou row.names de comprimento 0)


# reseting the dataframe index
fin
rownames(fin) <- 1:nrow(fin)
fin

nrow(fin)


# outro jeito é apagando o nome das linhas assim elas voltarão a contar o número original


fin<- fin_backup
fin <- fin[!is.na(fin$Industry),]  # declarando sem os valores NA


rownames(fin)<-NULL

fin


