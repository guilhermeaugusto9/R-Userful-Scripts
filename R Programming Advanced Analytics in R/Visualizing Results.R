# THE TUTORIAL STARTS AT THE 304 line





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


# Median inputation method for NA values



# In first plance we need to find the cases of NA


fin[!complete.cases(fin),]






# iremos preencheer a coluna Employees então temos que achar a médiana para essa coluna


median(fin[,"Employees"],na.rm=TRUE)

# poderiamos também pensar na MÉDIA mas, ela é muito influenciada por OUTLIERES então usaresmos A MEDIANA

mean(fin[,"Employees"],na.rm=TRUE) # essa é a média, apenas para mostrar como ela fica bem mais alta

# Para a média ficar mais exata iremos fazer apenas para as indústrias que ainda tem valores NA que são "Retail" e "Financial Services"



median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE) # a mediana é 28

mean(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE) # a media é 209


# é muito importante salvar essas médias e medianas em um variável para facilitar as substituição e ter um backup do valor



med_empl_retail <- median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE) # a mediana é 28


med_empl_retail

# agora iremos filtrar apenas os valores NA para essa indústria em específico


fin[is.na(fin$Employees)& fin$Industry=="Retail",]


# para substituir iremos declarar o filtro e declarar como o valor da mediana que criamos anteriormente


fin[is.na(fin$Employees)& fin$Industry=="Retail","Employees"] <-med_empl_retail 


# se checarmos agora o filtro que mostrava onde estavam os NA para a industria Retail o resultado será <0 linhas>


fin[is.na(fin$Employees)& fin$Industry=="Retail",]


# agora iremos fazer o mesmo processo para a industria de "Financial Services"


med_empl_financial <- median(fin[fin$Industry=="Financial Services","Employees"],na.rm=TRUE)


med_empl_financial


# para substituir iremos declarar o filtro e declarar como o valor da mediana que criamos anteriormente

fin[is.na(fin$Employees)& fin$Industry=="Financial Services","Employees"] <-med_empl_financial


# se checarmos agora o filtro que mostrava onde estavam os NA para a industria Retail o resultado será <0 linhas>


fin[is.na(fin$Employees)& fin$Industry=="Financial Services",]



# checando agora as linhas que ainda existem valores NA


fin[!complete.cases(fin),]



# ----------------------------- agora iremos aplicar a mesma situação para a coluna Growth



med_growth_construction <- median(fin[fin$Industry=="Construction","Growth"],na.rm=TRUE)

med_growth_construction

# para substituir iremos declarar o filtro e declarar como o valor da mediana que criamos anteriormente

fin[is.na(fin$Growth)& fin$Industry=="Construction","Growth"] <-med_growth_construction

# se checarmos agora o filtro que mostrava onde estavam os NA para a industria Retail o resultado será <0 linhas>

fin[is.na(fin$Growth)& fin$Industry=="Construction",]

# checando agora as linhas que ainda existem valores NA


fin[!complete.cases(fin),]

# -------------------------- agora iremos fazer a substituição pela mediana do Revenue e Expenses para a indústria de construção linhas 8 e 42


# revenue

med_revenue_construction <- median(fin[fin$Industry=="Construction","Revenue"],na.rm = TRUE)

med_revenue_construction


# para substituir iremos declarar o filtro e declarar como o valor da mediana que criamos anteriormente

fin[is.na(fin$Revenue) & fin$Industry == "Construction","Revenue"] <- med_revenue_construction


fin[c(8,42),]  # verificamos que as linhas foram preenchidas corretamente com o valor da mediana declarado anteriormente



# se checarmos agora o filtro que mostrava onde estavam os NA para a industria Retail o resultado será <0 linhas>

fin[is.na(fin$Revenue) & fin$Industry == "Construction",]



# vamos observar agora as linhas ainda com valores NA

fin[!complete.cases(fin),]


# expenses



med_expenses_construction <- median(fin[fin$Industry=="Construction"& is.na(fin$Profit),"Expenses"],na.rm = TRUE) # adicionamos uma camada a mais de filtro em que o filtramos o NA para o profit também evitando que fosse filtrado algo que nao queiramos 

med_expenses_construction


# para substituir iremos declarar o filtro e declarar como o valor da mediana que criamos anteriormente

fin[is.na(fin$Expenses) & fin$Industry == "Construction" & is.na(fin$Profit),"Expenses"] <- med_expenses_construction


fin[c(8,42),]  # verificamos que as linhas foram preenchidas corretamente com o valor da mediana declarado anteriormente



# se checarmos agora o filtro que mostrava onde estavam os NA para a industria Retail o resultado será <0 linhas>

fin[is.na(fin$Expenses) & fin$Industry == "Construction",]

# vamos observar agora as linhas ainda com valores NA

fin[!complete.cases(fin),]



#------------------------------------------- NOW STARTS THE TUTORIAL --------------------------------------------------------------------------------





# apenas relembrando os calculos que iremos utilizar



# REVENUE - EXPENSES = PROFIT

# EXPENSES = REVENUE -  PROFIT




fin[!complete.cases(fin),]



# Iremos filtrar os valores em que existe NA na coluna Profit e declarar elas como o calculo PROFIT = REVENUE - EXPENSES



fin[is.na(fin$Profit),"Profit"] <- fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Expenses"]

# para comprovar que foi substituido corretamente nas linhas que existia o problema 8 e 42 



fin[c(8,42),]


# vamos observar agora as linhas ainda com valores NA

fin[!complete.cases(fin),]




# agora então iremos substituir o Expenses --> EXPENSES = REVENUE -  PROFIT


fin[is.na(fin$Expenses),"Expenses"] <- fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]



# para comprovar que foi substituido corretamente nas linhas que existia o problema 15



fin[c(15),]


#------------------------------------------- NOW STARTS THE TUTORIAL --------------------------------------------------------------------------------





# Nos iremos criar agora 3 gráficos 


# 1 A scatrerplot classifed by industry showing revenue , expenses, profit

# 2 A scatter plto that includes industry trends for the espenses - revenue Relationship


# 3 Boxplots showing grow by industry



# primeiramente precisamos chamar a lib ggplot 2


library(ggplot2)

# --------------------- 1 A scatrerplot classifed by industry showing revenue , expenses, profit

# declarando como um obj o grafico base

 p <- ggplot(data = fin)

 
 # grafico que mostra em pontos revenue e Expenses , o tamanho das bolhas mostra o Profit
 
 p + geom_point(aes(x = Revenue , 
                     y = Expenses,
                     colour = Industry,
                    size = Profit))
  
 # ------------------- 2 A scatter plto that includes industry trends for the espenses - revenue Relationship


 #  tornando o gráfico mais bonito , primeiramente para facilitar, iremos transformar o gráfico anterior em um obj
 
 q <- ggplot(data = fin , (aes(x = Revenue , 
                               y = Expenses,
                               colour = Industry
                               )))
q + geom_point () +
   geom_smooth(fill = NA, size = 1.2)





# 3 Boxplots showing grow by industry


b <- ggplot(data = fin, aes(x =  Industry,
                            y = Growth,
                            colour = Industry))
b + geom_boxplot()


# extra


b + geom_jitter() + 
  geom_boxplot(size = 1,
               alpha = 0.5,
               outlier.colour = NA)
























