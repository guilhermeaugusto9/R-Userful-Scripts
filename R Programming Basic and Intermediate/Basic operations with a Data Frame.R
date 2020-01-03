#----------------------- subseting -----------------------------

# para selecionar apenas as 10 primeiras linhas e todas as colunas

stats[1:10,]

# linha 3 a 9


stats[3:9,]


# linha 4 e linha 100

stats[c(4,100),]


 # ------------------------------------- remembering [] ----------------------------------------------

# lembrando como o [ ] funciona, para um Data frame, diferentemente das matrizes em que quando vc extrai uma linha vira um Vector no DF continua Df
# não precisa fazer o drop

stats[1,]


# mas se vc faz para selecionar uma coluna vc precisa usar o drop

stats[,1]

stats[,1,drop = F]



#-----------------------------------------------basic operations ----------------------------------------------------

head(stats)


stats$Birth.rate * stats$Internet.users   # multiplicação

stats$Birth.rate / stats$Internet.users   # divisão

stats$Birth.rate + stats$Internet.users   # soma

stats$Birth.rate - stats$Internet.users   # subtração




#----------------------------- adicionar uma coluna -----------------------------------------------------------------

head(stats)


# é muito simples, vc deve apenas declarar a coluna, como se ela já existissse e adicionar o calculo que vc deseja, se vc rodar mais uma vez
# o data frame ela já estará lá

stats$Mycalc <- stats$Birth.rate * stats$Internet.users

head(stats)

# se vc adicionar um vector por exemplo de 1 a 5 , os valores serão recliclados e 1 a 5 será adicionado em sequencia


stats$xyz <- 1:5
head(stats)


# -------------------------- remover uma coluna -----------------------------------------------------------

# para remover uma coluna é só declará-la como Falsa


head(stats)

stats$xyz <- NULL
head(stats)













