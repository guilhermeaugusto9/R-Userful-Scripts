# nessa seção iremos fazer alguns gráficos que irão proporcionar insights sobre o data set do basket

# é uma das partes mais importantes para um Data Analyst pois é onde o Analyst irá demonstrar a visão e conhecimento do negócio


# para fazer isso iremos usar a função criada na aula passada 



myplot2 <- function(data, rows=1:10) {
  
  Data<- data[rows,,drop=F]
  matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows] , col = c(1:4,6), pch = 15:18, horiz = F)
  
}

# analizando os salários dos jogadores

myplot2(Salary)

# analizando os salários dos jogadores/jogo

myplot2(Salary/Games)


# analizando os salários dos jogadores/fieldGoals

myplot2(Salary/FieldGoals)


#métricas do jogo


# analizando os fieldGoals/jogo

myplot2(FieldGoals/Games)


# analizando os pontos marcados

myplot2(Points)






#in-game metrics Normalized

myplot2(FieldGoals/Games)

myplot2(FieldGoals/FieldGoalAttempts)
myplot2(FieldGoalAttempts/Games)
myplot2(Points/Games)



# observações interessantes

myplot2(MinutesPlayed/Games)
myplot2(Games)


#importancia do tempo para o jogador

myplot2(FieldGoals/MinutesPlayed)



#Estilo dos jogadores

myplot2(Points/FieldGoals)










