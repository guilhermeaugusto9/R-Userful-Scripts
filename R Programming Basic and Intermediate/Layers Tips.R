


t <- ggplot (data = movies, aes(x = AudienceRating))
t + geom_histogram(binwidth = 10,
                   fill="White",
                   colour="Blue"
                   
                   )



# another way to make the same graph

# essa forma é a mais versátil


t<- ggplot(data = movies)
 t + geom_histogram(binwidth = 10,
                    aes(x=AudienceRating),
                    fill="white",
                    colour="Blue")
 
 
 
# Fazendo da forma acima, voce pode aproveitar sempre o dataset como objeto no caso do exemplo
 
 
 t<- ggplot(data = movies)
 t + geom_histogram(binwidth = 10,
                    aes(x=CriticRating),
                    fill="white",
                    colour="Blue")
 
 # Para fazer o fill como uma coluna lembre-se de colocar dentro do aes
 
 
 t<- ggplot(data = movies)
 t + geom_histogram(binwidth = 10,
                    aes(x=CriticRating, fill = Genre),
                   colour="Blue")
 
 
 # é possivel apesar de muito raro criar dessa forma
 
 # não declarando nem o data frame dentro do ggplot e o declarando na geometria dos gráficos
 
 z <- ggplot()

 z + geom_histogram(data = movies,
                    aes(x= CriticRating, fill= Genre),
                    colour = "Blue")
 
 

  