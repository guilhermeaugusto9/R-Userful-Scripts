# -------------------------------------------------  This tutorial starts at 215 line



# selecionando a pasta em que estão os arquivos 
getwd()
setwd("C:/Users/guilherme.augusto/Documents/R Programming Material/R Programming Advanced Analytics in R/Weather Data")
getwd()

# read data

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








# Whats is the apply family                                                   # se vc usar a função 

# o número 1 signifca que irá se aplicar as linhas


# apply(M,1, mean)
# O resultado será um vetor da média em cada linha da matriz
# [1] 51.0  41.6   43.0  



#[,1]     [,2]      [,3]      [,4]     [,5]

# M =   #[1,]  "col1"   "col2"    "col3"     "col4"   "col5"                           
#[2,]  "col1"   "col2"    "col3"     "col4"   "col5"
#[3,]   "col1"   "col2"    "col3"     "col4"   "col5"



# apply(M,1, max)
# O resultado será um vetor com o valor maximo em cada linha da matriz
# [1] 51.0  41.6   43.0  








# se vc usar a função 

# o número 2 signifca que irá se aplicar as COLUNAS


# apply(M,2, mean)
# O resultado será um vetor da média em cada COLUNA da matriz
# [1] 51.0  41.6   43.0  



#[,1]     [,2]      [,3]      [,4]     [,5]
#M =      #[1,]  "col1"   "col2"    "col3"     "col4"   "col5"                           
#[2,]  "col1"   "col2"    "col3"     "col4"   "col5"
#[3,]   "col1"   "col2"    "col3"     "col4"   "col5"



# apply(M,2, max)
# O resultado será um vetor com o valor maximo em cada COLUNA da matriz
# [1] 51.0  41.6   43.0  








# -----------------------------------LISTA DE FUNÇÕES APPPLY ------------------------------------------------------------------------

apply()            # USADO EM MATRIZES TANTO PARA LINHAS QUANTO PARA COLUNAS
tapply()           # USADO EM VETORES PARA EXTRAIR SUBGRUPOS E APLICAR UMA FUNÇÃO A ELES
by()              # USADOS EM UM DATA FRAME , TEM O MESMO CONCEITO DO GRUPO BY NO SQL
eapply()          # USADO EM UM AMBIENTE (E)
lapply()          # FUNÇÃO APPLY PARA UMA LISTA (L)
sapply()          # UMA VERSÃO DO lapply(). Pode simplificar (S) o resultado , não é apresentado como lista
vapply()          #  has a pre-specified type of return value (V)
replicate()       # Roda uma função multiplas vezes , é geralmente usado para geração de variáveis randomicas
mapply()          # Multivariada (M) versão do sapply, OS argumentos podem ser reciclados
rapply()          # versão recursiva do lappy














# usando a função apply



# calculando a média 

Chicaco


apply(Chicaco, 1, mean)



Chicaco


#aplicando o maximo

apply(Chicaco,1,max)

# aplicando o mínimo


apply(Chicaco,1,min)





# fazendo a primeira entrega do desafio para comparar as médias


apply(Chicaco, 1, mean)
apply(Houston, 1, mean)
apply(NewYork, 1, mean)
apply(SanFrancisco, 1, mean)


# existe uma maneira mais facil para fazer isso 




# using lapply


Chicaco


# primeiramente iremos transpor as colunas em linhas e as linhas em colunas

t(Chicaco)

# para transpor por exemplo todos os componentes da lista Weather


mynewlist <- lapply(Weather,t) # t(Chicago), t(Houston) , t(NewYork) , t(SanFrancisco)

mynewlist


# criando uma linha a mais na lista Weather de 1 a 12 em cada um dos elementos


lapply(Weather, rbind, NewRow=1:12)



# aplicando a média a cada uma das linhas da lista Weather



lapply(Weather, rowMeans)  # muito mais fácil que a que usamos da ultma vez com o apply em cada uma mas ainda existe uma maneira mais fácil



#--------------- THE TUTORIAL STARTS HERE ----------------------------------------------------------------------



#combining lapply with []



Weather



# para extrair o primeiro elemento do primeiro componente da lista que é uma matriz, existem duas formas


Weather[[1]][1,1]

#ou

Weather$Chicago[1,1]


# para extrair por exemplo o elemento 1,1 de todos os componentes da lista



lapply(Weather, "[",1,1)



# extraindo as primeiras linhas de todos os componentes da lista


lapply(Weather, "[",1,)


# extrando a coluna Mar para cada componente da lista


lapply(Weather,"[", ,3)









































