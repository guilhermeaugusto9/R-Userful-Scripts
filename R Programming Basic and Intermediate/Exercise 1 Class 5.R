
# fist attempt


mydata<-readr::read_csv(file.choose() )

library(ggplot2)

ggplot(data=mydata, aes(x=carat, y=price)) +
  geom_point()




# second attempt


ggplot(data=mydata, aes(x=carat, y=price, colour=clarity)) +
  geom_point()


# third attempt


ggplot(data=mydata, aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1)


# with a filter 


ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price,
           colour=clarity)) +
  geom_point(alpha=0.1)


# with a smooth , deixa o gráfico bem mais bonito


ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price,
           colour=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()





