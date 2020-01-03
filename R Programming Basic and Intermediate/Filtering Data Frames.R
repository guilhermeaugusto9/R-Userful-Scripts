stats<-read.csv(file.choose())
stats

# filtrando os dados

# formula com o filtro separado, criando um vetor e depois o filtro

filter <- stats$Internet.users < 2
 stats[filter,]

 # formula mais usual diretamente selecionando a coluna com o filtro
 
 stats[stats$Birth.rate >40,]
 
 # selecionado mais de uma condição ao mesmo tempo , nesse caso vc usa o & para que as duas condições sejam aceitas
 
 
 stats[stats$Birth.rate > 40 & stats$Internet.users <2,]
 
 
 # filtrando apenas o que atente a uma condição de igual
 
 stats[stats$Income.Group == "High income", ]

 
 # filtrando apenas as informações de malta
 
 stats[stats$Country.Name == "Malta",]
 