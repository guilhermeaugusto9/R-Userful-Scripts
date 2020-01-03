#funções são feitas para capsular códigos



#para criar uma função é apenas funcion () {  } assim como no loop



# ex

myplot <- function() {
  
  Data<- MinutesPlayed[1, ,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[1] , col = c(1:4,6), pch = 15:18, horiz = F)
  
  }

myplot()


#para não precisar ficar mudando dentro do código usamos paramentros, dentro do () voce indica, por exemplo voce pode colocar rows para indicar qual
#linha sera a referencia

#ex utilizando o código anterior



myplot2 <- function(rows) {
  
  Data<- MinutesPlayed[rows, ,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows] , col = c(1:4,6), pch = 15:18, horiz = F)
  
}

myplot2(1:10)


#nesse caso oq for coloado dentro do () vira o parâmetro rows




# para mudar agora dinamicamente o data que ele irá utilizar
myplot2 <- function(data, rows) {
  
  Data<- data[rows, ,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows] , col = c(1:4,6), pch = 15:18, horiz = F)
  
}

myplot2(Salary,1:10)


#nesse caso oq for coloado dentro do () vira o parâmetro rows que no caso foram os dados "data" e as linhas "rows"

# vamos tentar agora colocar as colunas também





# para mudar agora dinamicamente o data que ele irá utilizar
myplot2 <- function(data, rows, cols) {
  
  Data<- data[rows,cols ,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows] , col = c(1:4,6), pch = 15:18, horiz = F)
  
}

myplot2(Salary,1:10,1:5)



# é possível também criar um valor default, que caso não seja preenchido é preenchido com o default por exemplo vou deixar o rows de 1:10
myplot2 <- function(data, rows=1:10) {
  
  Data<- data[rows,,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows] , col = c(1:4,6), pch = 15:18, horiz = F)
  
}

myplot2(Salary,1:3)

# se o parâmetro for preenchido ele roda normalmente













