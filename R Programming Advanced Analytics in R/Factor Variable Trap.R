# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

fin <- read.csv(file.choose())

# lendo o arquivo

fin

str(fin)

# factor é basicamente uma forma de níveis de categoria que o R reconhece



# pode acontecer de uma coluna ser reconhecida automaticamente com int mas na verdade vc precisa que seja factor

# e o contrário também , voce precisa que seja numérico mas o R reconhece como factor então é preciso mudar para o tipo que precisamos




# --------------------------------------de não factor para factor---------------------------


fin$ID <-factor(fin$ID)  # basicamente voce declara a coluna novamente e usa a função factor () passando como parâmetro a coluna

str(fin)  # checando agora o ID esta como factor


# fazendo a mesma coisa para a coluna Inception

fin$Inception <- factor(fin$Inception)

str(fin)

summary(fin)


# ------------------------------ de factor para não factor ---------------------------------------------------------


a <- c("12","13","14" ,"12","12")  # fazendo dessa forma para criar o vector com os números entre " " fica como se os números fossem caracteres

a

typeof(a)  # aqui podemos comprovar, quando se roda essa função o tipo aparece como "Character"



# para trocar de char para numérico

b <- as.numeric(a)  # usamos a função as numeric para realizar a conversão
b

typeof(b)


# agora para converter em numerico quando a coluna é um factor



z<-factor(c("12","13","14" ,"12","12"))
z
typeof(z)


y<-as.numeric(z)

y
typeof(y)


# a armadilha do factor é que quando vc converte em factor e depois tenta converter em número como as.numeric ele converte os fatores e não os números
#ou seja no y ele converteu os levels fatores dentro do vector e não os números como queríamos


# a forma correta é converter primeiro em charecter e dpois em numero


w <- as.numeric(as.character(z))
w
typeof(w)



# ---------------- FACTOR VECTOR TRAP EXAMPLE -----------------------------------------------------------------


head(fin)
str(fin)

# teremos que converter o   Profit em Factor


fin$Profit <- factor(fin$Profit)
str(fin)


# na verdade precismos que sejam convertidos os factor $ Profit, $ Revenue , $ Expenses e $ Growth


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



# agora podemso ver as medidas que precisavamos













