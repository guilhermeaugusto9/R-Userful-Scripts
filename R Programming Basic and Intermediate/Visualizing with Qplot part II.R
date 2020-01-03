
# Criando um gráfico com cor variando de acordo com a variável região 

qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region
)


# mudar os shapes do gráfico, eles podem ser consultados no google para mostrarl qual código é qual


qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region,
      shape = I(17)
)


qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region,
      shape = I(2)
)


qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region,
      shape = I(23)
)


# Transparency, Alfa é a função para alpha, ele vai de 0 a 1

qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region,
      shape = I(19),
      alpha = I(0.4)
)


# Título, main  a função para os títulos

qplot(data= merged, x= Internet.users, y = Birth.rate,
      size=I(2),
      colour= Region,
      shape = I(19),
      alpha = I(0.8),
      main = "Birth Rate x Internet Users"
)


























