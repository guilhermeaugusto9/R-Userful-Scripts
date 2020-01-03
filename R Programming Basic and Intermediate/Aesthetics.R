
# abrindo a base "Movie Ratings .csv"

movies <- read.csv(file.choose())

# analizando a base que foi importada
movies

#antes estavamos usando o qplot que é um gráfico rápido 

# agora iremos usar o ggplot que é o melhor e mais completo jeito de fazer um gráfico, ele tem mais fatores mas é muito melhor


# primeiro gráfico

library(ggplot2)
ggplot(data = movies, #base de dados
       aes(x=CriticRating, y=AudienceRating)) + # aes, x e y
        geom_point()  # típo de gráfico que queremos



# Adicionando uma cor para cáda género no gráfico


ggplot(data = movies, #base de dados
       aes(x=CriticRating, y=AudienceRating, # aes, x e y
       colour=Genre)) + # adicionando cores, lembre- se que esta dentro do aes , eu coloquei na linha de baixo para ficar mais organizado
       geom_point()  # típo de gráfico que queremos



# Selecionando o tamanho da bolha de acordo com uma coluna


ggplot(data = movies, #base de dados
       aes(x=CriticRating, y=AudienceRating, # aes, x e y
           colour=Genre,# adicionando cores
            size=BudgetMillions)) + # o tamanho será de acordo com o critério da coluna budget
            geom_point()  # típo de gráfico que queremos
