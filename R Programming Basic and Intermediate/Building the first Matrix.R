



             #[,1]  [,2]   [,3]   [,4]   [,5]

#A =   #[1,]  "a"   "d"    "g"     "j"   "m"
      #[2,]   "b"    "e"   "h"     "k"   "n"
     #[3,]    "c"    "f"   "i      "l"   "o"


# existem duas formas principais de criar uma matrix

# formula matrix () quase não usada

# formula rbind() a mais utilizada  e a que iremos usar


               #[,1]     [,2]      [,3]      [,4]     [,5]

#A =   #[1,]  "row1"   "row1"    "row1"     "row1"   "row1"
       #[2,]  "row2"   "row2"    "row2"     "row2"   "row2"
      #[3,]   "row3"   "row3"    "row3"     "row3"   "row3"


# a função rbind empilha as linhas que vc indica  


# ou a função cbind() que coloca uma coluna do lado da outra empilhando-as lateralmente haha


               #[,1]     [,2]      [,3]      [,4]     [,5]

#A =   #[1,]  "col1"   "col2"    "col3"     "col4"   "col5"
       #[2,]  "col1"   "col2"    "col3"     "col4"   "col5"
      #[3,]   "col1"   "col2"    "col3"     "col4"   "col5"



# criando algumas matrizes


#matrix
my.data <- 1:20
A<-matrix(data = my.data,nrow =4 ,ncol =5 )
A

# Para acessar o número 10 por exemplo nessa matrix

A[2,3]


#CRIANDO UMA MATRIX COM BY ROW = T
B<-matrix(data = my.data,nrow =4 ,ncol =5 , byrow = T)
B
# Nesse caso a organização é por linha ou seja ao inves de ser 1,2,3,4 na coluna , a sequencia é feita nas linhas


# Criando uma matrix utilizando o rbind ()


r1<- c("I", "am", "happy")
r2<- c("what", "a","day")
r3<- c(1,2,3)

C<-rbind(r1,r2,r3)
C



# Criando uma matrix com Cbind()


c1<- 1:5
c2<- -1:-5
D<- cbind(c1,c2)
D





















