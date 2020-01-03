
#criando um vetor com 5 números aleatórios

x <- rnorm(5)
x

#criando um loop que apresenta os números criados no vetor aleatório acima

#esse loop é o mais comum no R
for(i in x){
  
  print(i)
}

#exibindo todos os números manualmente

print(x[1])

print(x[2])

print(x[3])

print(x[4])

print(x[5])



#criando com um loop / conventional programming loop


for(j in 1:5) {


print(x[j])

}


#-------------------- SECOND PART ---------------------------------



N <- 100

a <- rnorm(N)
b <- rnorm(N)


#vectorized approch

c <- a*b


# de-vectorized approch


d <- rep(NA,N)
for( i in 1:N) {
  
   d[i] <- a[i] * b[i]
  
}
































