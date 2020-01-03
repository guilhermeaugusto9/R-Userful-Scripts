

# abrindo a base "Movie Ratings .csv"

movies <- read.csv(file.choose())

# analizando a base que foi importada
movies

# renomeando as colunas

colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

# olhando as 5 primeiras linhas

head(movies)

# olhando as 5 ultimas linhas
tail(movies)

# analisando a estrutura

str(movies)


# analisando um resumo estatístico

summary(movies)


# um conceito de factors bem estruturado esta no http://material.curso-r.com/forcats/


# transformando uma coluna que não é em factor em factor

factor(movies$Year)

movies$Year <- factor(movies$Year)
str(movies)



# --------------------------------------------------alterando a ordem dos factors---------------------------

#Ao criar o factor, você pode dizer ao R qual a ordem que você quer para os levels:



# df$categorias <- factor(df$categorias, levels=c("Muito baixa","Baixa","Média","Alta","Muito alta")

 # resultado

# levels(df$categorias)
# [1] "Muito baixa" "Baixa"       "Média"       "Alta"        "Muito alta"
                        
                   
                        