

?qplot

library(ggplot2)
qplot(data=stats, x=Internet.users)

# criando um gráfico de barras  bem simples 

qplot(data=stats, x = Income.Group, y = Birth.rate)

# nesse caso acrescentei o tamanho dos pontos e também a cor, é importante colocar o I antes para o R entender que vc quer colocar a cor azul e o 
# tamanho 3 se não colocar e colocar apenas colour = "blue" fica rosa 

qplot(data=stats, x = Income.Group, y = Birth.rate , size = I(3) ,
      colour = I("blue"))


# para adicionar um gráfico diferente, acrescentamos o geom e o tipo de gráfico que queremos

qplot(data=stats, x = Income.Group, y = Birth.rate , geom = "boxplot")


