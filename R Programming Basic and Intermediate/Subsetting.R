

x<- c ("a","b","c","d","e")
x
x[c(1,5)]

x[1]


#susetting é pegar uma parte de um vetor e gravar em um novo vector ou matrix


Games

#para pegar por exemplo apenas os 3 primeiros jogadores, que estão nas 3 primeiras lihas e apenas os ultimos 5 anos usamos
Games[1:3,5:10]



# para comparar o primeiro com o ultimo

Games[c(1,10),]

# para selecionar 2006 a 2010


Games[,c("2008","2009")]


#para extrair apenas a primeira linha, nesse caso vira um vector

Games[1,]



#para extrair apenas a primeira linha, e não virar vector mas permanecer matriz, OU SEJA, irá apresentar a linha e as colunas

Games[1,,drop=F]

#para pegar apenas o kobe no ano 2009, usamos o Drop para ele mostrar a matriz completa


Games["KobeBryant","2009", drop=F]

