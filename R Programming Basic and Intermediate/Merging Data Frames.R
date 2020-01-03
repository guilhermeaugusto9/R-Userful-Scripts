
# primeira base
head(stats)

# segunda base

head(mydf)

# existem colunas em comum, que podemos chamar de chaves, assim como no excel no procv
# iremos cruzar as bases para criar uma apenas a partir das chaves



# a função que iremos usar é Merge , eu usei o nome da nova base de merged apenas para lembrar depois



# esse é o nome da nova base <- merge é a função (base1, base2, by.x = Chave base1. by.y = chave base2), 
# quando fazemos isso apenas a chave da base 2 não irá para a nova base

merged <- merge(stats, mydf, by.x= "Country.Code", by.y = "Code")
head(merged)

# removendo a coluna Country que ficou duplicada

merged$Country <- NULL
head(merged)

