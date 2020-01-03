


# criando o primeiro vector

MyFirstVector <-c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
# a função acima mostra se realmente é int o vetor que criamos, mas por default o R coloca em decimal a não ser que vc especifique com o L após

is.double(MyFirstVector)


v2 <- c(3L, 12L, 243L, 0L)

is.integer (v2)

v3 <- c("a","b23", "hello")
v3

is.character(v3)


#se misturar tipo o vetor não ira funcioa, ele irá transformar no tipo mais frequente


# função sequencia

seq()   #sequencia como o ","
rep()   #repete


seq(1,15)

#sequencia de 2 a dois, é só adicionar após a virgula quais numeros não ira contar como por exemplo no de 1 a 15, nao contar os multiplos de 2


z <-seq(1,15,2)

# o rep repete o número ou o que vc quiser o numero de vezes especificado no segundo elemetno da função 

# repetir o 3 , 10x

u <- rep(3,10)
u
