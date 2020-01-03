

# acessando elementos nos vetores


w <- c("a","b","c","d","e")
w

#para acessar algum dos elementos utiliza-se o [ ] 

w[1]  #acessa o primeiro elemento no caso o "a"
w[2]  #acessa o primeiro elemento no caso o "b"
w[3]  #acessa o primeiro elemento no caso o "c"

w[-1]  #apresenta os elementos do vetor com exceção do 1
w[-3]  #apresenta os elementos do vetor com exceção do 3


# criando um novo vetor a partir do select por exemplo criando um vetor com o w original - o 3 elemento

v <- w[-3]

#selecionando um Range, entre o 2 e 4 elemento

w[2:4]

# é possivel criar também uma combinação trazendo por exemplo o 1, 3 e 5 elementos

w[c(1,3,5)]


# é possivel criar também uma combinação trazendo os elementos - os que vc especificar por exemplo   tudo menos os 3 e 5 elementos

w[c(-3,-5)]


