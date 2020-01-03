
#operação por matrizes utilizando a base de dados s4-BasketballData.R , para esse script rodar direitinho, abra o que tem a base e rode todo ele


Games
rownames(Games)
colnames(Games)

Games["LeBronJames","2012"]


FieldGoals

#para descobrir quantos fieldgoals cada jogador marcou por jogos apenas dividimos um pelo outro

fieldbygame <- FieldGoals/Games


# para arredondar o valor

round.fieldbygame <- round(fieldbygame,2)
round.fieldbygame




# para calcular os minutos por jogo

Minpergame <- round(MinutesPlayed / Games ,2)
Minpergame


