# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R")
getwd()



fin <- read.csv("P3-Future-500-The-Dataset.csv",na.strings = c(""))  # essa parte seve para substiuir o vazio por NA para poder operacionalizar ele depois

# removing records with missign data

# primeiramente vamos fazer um backup da base para podermos usar caso precise, sempre faça isso

fin_backup <- fin


fin <- fin[!is.na(fin$Industry),]  # declarando sem os valores NA


rownames(fin)<-NULL

fin



fin[is.na(fin$State),]

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


# desse jeito vemos nos estados os que estão com NA mas tem as cidades preenchidas então podemos supor qual estado deveriam estar

# filtrando cidade de New York


fin[is.na(fin$State) & fin$City == "New York",]


fin[is.na(fin$State) & fin$City == "New York","State"] <- "NY"

# checando se ficou correto
fin[c(11,377),]

# arrumando a cidade de San Francisco
fin[is.na(fin$State) & fin$City == "San Francisco","State"] <- "CA"

# CHECK

fin[c(82,265),]

# observando as linhas que ainda tem valoreS NA


fin[!complete.cases(fin),]
