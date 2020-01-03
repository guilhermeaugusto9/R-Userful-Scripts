library(ggplot2)

# gráfico mais simples

qplot(data= stats, x= Internet.users, y = Birth.rate)


# gráfico com o tamanho maior

qplot(data= stats, x= Internet.users, y = Birth.rate,
      size=I(4)
      )

# gráfico com cor vermelha

qplot(data= stats, x= Internet.users, y = Birth.rate,
      size=I(4),
      colour= I("red")
)

# gráfico com cor variando de acordo com uma variável

qplot(data= stats, x= Internet.users, y = Birth.rate,
      size=I(4),
      colour= Income.Group
)

