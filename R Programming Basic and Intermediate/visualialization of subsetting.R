

Data<- MinutesPlayed[1:3,]

matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))

#para adicionar legenda

legend("bottomleft", inset=0.01, legend=Players[1:3] , col = c(1:4,6), pch = 15:18, horiz = F)


# PARA MOSTRAR APENAS 1 JOGADOR , TEM QUE USAR O DROP SE NÃO VIRA UM VECTOR
Data<- MinutesPlayed[1, ,drop=F]

matplot(t(Data), type = "b" , pch = 15:18, col = c(1:4,6))

#para adicionar legenda

legend("bottomleft", inset=0.01, legend=Players[1] , col = c(1:4,6), pch = 15:18, horiz = F)