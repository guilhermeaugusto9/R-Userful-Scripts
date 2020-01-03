

# geom smooth
library(ggplot2)

u <- ggplot(data = movies, aes( x = CriticRating, 
                                y = AudienceRating,
                            colour= Genre
                                           ))
u + geom_point() + geom_smooth(fill = NA)


# boxplot


r <- ggplot(data = movies, aes( x = Genre, 
                                y = AudienceRating,
                                colour= Genre
                                               )) 
r + geom_boxplot(size = 1.2)


# boxplot + points


r + geom_boxplot(size = 1.2) + geom_point()


# hack 

r + geom_boxplot(size = 1.2) + geom_jitter()


# hack 2 put the point first


r + geom_jitter() + geom_boxplot(size = 1.2,  alpha = 0.5) 


# challenge create the same boxplot with critic rating


c <- ggplot(data = movies, aes( x = Genre, 
                                y = CriticRating,
                                colour= Genre
                                              )) 
c + geom_jitter() + geom_boxplot(size = 1.2,  alpha = 0.5)







