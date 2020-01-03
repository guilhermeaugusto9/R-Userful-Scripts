# esse tutorial usa a base stats "P2-Demographic-Data.csv"

# apenas para verificar que a base está ativa
stats

# apresentando os primeiros dados

head(stats)

# em um data frame, COLUNAS TEM NOMES, linhas não então não é possivel assim como nas matrizes selecionar um registro apenas chamando o nome de uma linha

# o sinal $ é usado para selecionar uma coluna, funciona apenas em Data frames, não em matrizes


stats$Internet.users


# para selecionar o 2 resultado da coluna Internet users é só fazer

stats$Internet.users[2]


# existe uma função que é usada paa mostrar os levels dos factors em uma coluna

levels(stats$Income.Group)


