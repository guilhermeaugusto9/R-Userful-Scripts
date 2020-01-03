

v <- ggplot(data = movies, aes( x = BudgetMillions
  
                                            ))
v + geom_histogram(binwidth = 10 ,
                   aes( fill=Genre),
                   colour="Black")


# os facets são usados para criar um gráfico para cada um do que vc quiser

v + geom_histogram(binwidth = 10 ,
                   aes( fill=Genre),
                   colour="Black") + 
    facet_grid(Genre~., scales = "free")

# facets to scatterplots


w <- ggplot(data = movies, aes( x = CriticRating,
  
                                y = AudienceRating,
                                colour = Genre))

w + geom_point(size = 3)


# with facets

w + geom_point(size = 1) + 
  facet_grid(Genre~.) +
  geom_smooth()


# mudando de horizontal para vertical



w + geom_point(size = 1) + 
  facet_grid(.~Year) 

# combinando facets

w + geom_point(size = 1) + 
  facet_grid(Genre~Year) +
  geom_smooth(fill = NA)
  

# Adicionando o budget como tamanho


w + geom_point(aes(size = BudgetMillions)) + 
  facet_grid(Genre~Year) +
  geom_smooth(fill = NA)



