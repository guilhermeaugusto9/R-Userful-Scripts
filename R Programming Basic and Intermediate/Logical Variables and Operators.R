#Logical

#TRUE or T
#FALSE or F 
# Sempre com letra maiúscula


4 < 5
10 > 100

4 ==5

# != significa diferente
# >
# <
# <=
# >=
# ! means NOT
# | means OR
# & means and
# isTRUE() checa se é TRUE


result <- 4<5
result

typeof(result)


result2 <- !TRUE  #NOT TRUE
result2


result3 <- !(5>1) # colocando o ! ele inverte o resultado de dentro da função
result3

#utilizando o | que significa OU

result | result3

# utilizando o & que significa um E o outro , só ira retornar TRUE  se todos forem verdadeiros

result & result3


#usando o isTRUE ()

isTRUE(result)


