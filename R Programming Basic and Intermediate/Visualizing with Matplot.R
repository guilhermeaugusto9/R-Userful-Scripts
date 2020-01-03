#operação utilizando a base de dados s4-BasketballData.R , para esse script rodar direitinho, abra o que tem a base e rode todo ele

?matplot




FieldGoals

# a primeira coisa a fazer é transpor a base, de linhas para colunas para poder usar o matplot()

# a função para fazer isso é apenas t





matplot(t(FieldGoals), type = "b" , pch = 15:18, col = c(1:4,6))

#para adicionar legenda

legend("bottomleft", inset=0.01, legend=Players , col = c(1:4,6), pch = 15:18, horiz = F)



# para mostrar o gráfico de acurácia ou precisão dos jogadores

matplot(t(FieldGoals/FieldGoalAttempts), type = "b" , pch = 15:18, col = c(1:4,6))

#para adicionar legenda

legend("bottomleft", inset=0.01, legend=Players , col = c(1:4,6), pch = 15:18, horiz = F)
