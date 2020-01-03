


# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

fin <- read.csv(file.choose())

# lendo o arquivo

fin

str(fin)


# sub and gsub 


# são usadas para substituir alguma coisa



?gsub()

head(fin)


# na coluna Expenses iremos substituir a palavra Dollars


fin$Expenses <- gsub("Dollars", "", fin$Expenses)  # gsub ("O que voce quer substituir, "O que irá substituir", onde está o que sera sub)
head(fin)


# retirando as , da mesma coluna


fin$Expenses <- gsub(",", "", fin$Expenses)
head(fin)

str(fin)

# retirando o $ com na coluna Revenue, para encontrar o $ é necessário criar um atalho \\ junto com as " "


fin$Revenue <- gsub("\\$", "", fin$Revenue)
head(fin)

# retirando as , 

fin$Revenue <- gsub(",", "", fin$Revenue)
head(fin)
str(fin)



# fazendo a mesma coisa com om Growth, retirando o %


fin$Growth <-gsub("%","",fin$Growth)
head(fin)
str(fin)


# o gsub já converteu o factor em chr ai agora , para não cair na armadilha do factor podemos converter um numérico


fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue  <- as.numeric(fin$Revenue)
fin$Growth   <- as.numeric(fin$Growth)


str(fin)


summary(fin)


# agora as medias são criadas para as variáveis que queriamos








