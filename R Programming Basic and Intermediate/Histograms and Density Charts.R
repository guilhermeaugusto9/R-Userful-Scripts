
# fazendo um simples Histograma


s <- ggplot(data = movies,
            aes(x=BudgetMillions
                ))
s + geom_histogram()


# 


s <- ggplot(data = movies,
            aes(x=BudgetMillions
            ))
s + geom_histogram(binwidth = 10)  # o binwidth controla o de quanto em quanto ira variar o grafico se de 10 em 10 , 20 em 20


# fazendo assim sem declarar o y ele conta automaticamente o número de coisas que estão no x


# adicionando colors

s <- ggplot(data = movies,
            aes(x=BudgetMillions
                
            ))
s + geom_histogram(binwidth = 10, aes(fill=Genre)) 


# adicionando borders


s + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black") # quando vc coloca um fill, que é preenchimento e colour a colour vira a borda





# Grafico de densidade


s +geom_density(aes(fill= Genre))


# Posicionando um acima do outro para ficar melhor a visualização


s +geom_density(aes(fill= Genre), position = "stack")
























