
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


# é possivel reescrever o aes no layers geom

q + geom_point(aes(size = CriticRating))


# dessa forma o CriticRating fica maior 


# mudando as cores

q + geom_point(aes(colour=BudgetMillions))


# para voltar ao original

q + geom_point()


# é possivel reescrever inclusive o x e y

q + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget in Millions")


# reduzindo o tamanho das linhas


q + geom_line(size=I(1)) +
    geom_point()






