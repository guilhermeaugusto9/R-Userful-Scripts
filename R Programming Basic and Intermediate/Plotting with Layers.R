
# abrindo a base "Movie Ratings .csv"

movies <- read.csv(file.choose())

# analizando a base que foi importada
movies

# Selecionando o tamanho da bolha de acordo com uma coluna


ggplot(data = movies, #base de dados
       aes(x=CriticRating, y=AudienceRating, # aes, x e y
           colour=Genre,# adicionando cores
           size=BudgetMillions)) + # o tamanho será de acordo com o critério da coluna budget
  geom_point()  # típo de gráfico que queremos


# adicionando layers

# criando um objeto p como  um objeto

p<- ggplot(data = movies, #base de dados
       aes(x=CriticRating, y=AudienceRating, # aes, x e y
           colour=Genre,# adicionando cores
           size=BudgetMillions))
p

# nesse ponto se vc chama o objeto p ele plota o gráfico

# para criar o gráfico como o anterior é só add o geom_point

p + geom_point()


# para criar um gráfico de linhas


p +geom_line ()

# é possivel criar também um gráfico combinando duas visualizações


p + geom_line() +
    geom_point ()


