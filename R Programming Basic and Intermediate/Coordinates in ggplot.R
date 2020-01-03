



# limits and Zoom

m <- ggplot(data = movies, aes( x = CriticRating,
                                y = AudienceRating,
                                size = BudgetMillions,
                                colour = Genre))



m + geom_point()

# adicionando os limites, essa forma não é sempre que funciona bem

m + geom_point() +
  xlim(50,100) +
  ylim(50,100)


# criando uma outra forma de colocar os limites


n <- ggplot(data = movies, aes( x = BudgetMillions
                                ))
n + geom_histogram(binwidth = 10, aes( fill = Genre), colour = "Black")
  

n + geom_histogram(binwidth = 10, aes( fill = Genre), colour = "Black") +
  ylim(0,50)


# zooming


n + geom_histogram(binwidth = 10, aes( fill = Genre), colour = "Black") +
 coord_cartesian(ylim = c(0,50))


# improve graph w


w + geom_point(aes(size = BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year) +
  coord_cartesian(ylim = c(0,100))
