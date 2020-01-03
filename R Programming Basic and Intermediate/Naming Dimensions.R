#COLNAMES AND #ROLNAMES


Charlie<-1:5
Charlie

#give names

names(Charlie)

#nesse ponto o retorno é NULL porque não existe nomes para colunas ou linhas


names(Charlie)<- c("a","b","c","d","e")
Charlie
#para acessar o 4 por exemplo agora podemos apenas fazer

Charlie["d"]


#para apagar os nomes é apenas declarar como se fosse nomear e escrever NULL

names(Charlie) <- NULL


#colocando nomes em matrizes

temp.vec <- rep(c("a","B","zZ"),times = 3)
temp.vec
# se usar o times, ele replica na sequencia, se usar o each ele replica um por um o numero de vezes que vc colocar

temp.vec2 <- rep(c("a","B","zZ"),each = 3)
temp.vec2


Bravo <- matrix(temp.vec2,3,3)
Bravo

rownames(Bravo) <-c("How","are","you?")
colnames(Bravo) <-c ("X","Y","Z")


#voce pode também substituir um registro de uma matriz fazendo como abaixo, vc referencia a posição, como se estivesse consultando e declara novamente

Bravo["are","Y"]<-0
Bravo


# nesse caso foi substituido pelo 0



