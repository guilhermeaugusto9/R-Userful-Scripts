

#----- -2 ----- -1 ----- 0 ----- 1 ------ 2


x <- rnorm(1)

# é muito similar ao while, a grande diferença é que o while roda enquanto a condição for atendida e já o IF roda apenas uma vez caso a condição for atendida



if( x > 1) {
  
  answer <- "Maior que 1" 
  
  
}

# se não for colocado o else , caso não atenda a condição não aparece nada no console

rm(answer)   # a função rm remove o que esta dentro
if( x > 1) {
  
  answer <- "Maior que 1" 
  
  
} else{
  answer <- "Menor  ou igual a 1"
  
}

# o else dá uma segunda alternativa


rm(answer)   # a função rm remove o que esta dentro
if( x > 1) {
  
  answer <- "Maior que 1" 
  
} else{
  
  if (x >= -1)
  answer <- "Entre -1 e 1"
  
} else {
  answer <- "Menor que -1"
  
  
} 
  
# uma outra opção é usar um else if
# a função rm remove o que esta dentro

rm(answer)  
if( x > 1) {
  
  answer <- "Maior que 1" 
  
} else if(x >= -1) {
    answer <- "Entre -1 e 1"
  
} else {
  answer <- "Menor que -1"
  
} 
