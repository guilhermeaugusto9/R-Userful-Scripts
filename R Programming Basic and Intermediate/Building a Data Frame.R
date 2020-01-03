# Creating a Data Frame


#Adicionando os vectors para um DF

mydf <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset, Regions_2012_Dataset)


head(mydf)

colnames(mydf) <-c("Country", "Code", "Region")

head(mydf)

rm(mydf)


mydf <- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,
                   Region = Regions_2012_Dataset)
head(mydf)
summary(mydf)


