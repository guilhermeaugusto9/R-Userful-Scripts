
# abrindo a base "Movie Ratings .csv"

movies <- read.csv(file.choose())

# analizando a base que foi importada
movies



# criando um objeto p como  um objeto

p<- ggplot(data = movies, #base de dados
           aes(x=CriticRating, y=AudienceRating, # aes, x e y
               colour=Genre,# adicionando cores
               size=BudgetMillions))
p

# nesse ponto se vc chama o objeto p ele plota o gráfico

# para criar o gráfico voce adiciona o tipo que vc quer, apenas isso

p + geom_point()


# criando um objeto q

q <- ggplot(data=movies,
            aes(x=CriticRating, y=AudienceRating,
                colour=Genre,
                size=BudgetMillions
            ))
q

# add geom layer

q + geom_point()

# criando um novo gráfico alterando o x e o label

q + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget in Millions")




# -------------------- Mapping vs Settings 

# se for mapping usa o aes

# se for seting use sem o aes




r<- ggplot(data = movies,
           aes(x=CriticRating, y=AudienceRating,
               ))
r + geom_point()



# add colour

# 1 mapping 

r + geom_point(aes(colour=Genre))


# 2 Setting

r + geom_point(colour= "Green")

# error

r + geom_point(aes(colour="Green")) # desse jeito dá errado 


# 1 Mapping


r + geom_point(aes(size=BudgetMillions))


# 2 Setting


r + geom_point(size=10)










