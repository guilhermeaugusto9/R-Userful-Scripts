
# -------------------------adicionando temas-------------------------------------

o <- ggplot(data = movies, aes(x = BudgetMillions
                                                  ))
o + geom_histogram(binwidth = 10, aes(fill=Genre), colour = "Black")


# adicionando labels

# primeiro iremos colocar o grafico acima em um objeto h

h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour = "Black")

# adiciondando nomes aos eixos e colocando cores neles

h + xlab("Money Axis") + 
    ylab("Number of Movies")+
    theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), # titulo do eixo x como a cor vende escuro e tamanho 30
          axis.title.y = element_text(colour = "Red", size = 30),       # titulo do eixo y como a cor vermelho escuro e tamanho 30
          axis.text.x = element_text(size = 20),                        # aumentando o tamanho dos elementos do eixo x para 20
          axis.text.y= element_text(size = 20))                         # aumentando o tamanho dos elementos do eixo y para 20

# adicionando uma legenda


h + xlab("Money Axis") + 
  ylab("Number of Movies")+
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y= element_text(size = 20),
        
        legend.title = element_text(size = 30),  #aumentando o tamanho do título da legenda
        legend.text = element_text(size = 20),   # aumentando o tamanho do que esta escrito na legenda   
        legend.position = c(1,1),                # colocando a legenda no topo 
        legend.justification = c(1,1)            # colocando o texto justificado
        
        )


# adicionando um título a um gráfico


h + xlab("Money Axis") + 
  ylab("Number of Movies")+
  ggtitle("Movie Budget Distribuition") + # Esse é o título do gráfico 
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y= element_text(size = 20),
        
        legend.title = element_text(size = 30),  #aumentando o tamanho do título da legenda
        legend.text = element_text(size = 20),   # aumentando o tamanho do que esta escrito na legenda   
        legend.position = c(1,1),                # colocando a legenda no topo 
        legend.justification = c(1,1),            # colocando o texto justificado
        
        
        plot.title = element_text(color = "DarkBlue",
                                  size = 40,
                                  family = "Courier"
                                  ))

