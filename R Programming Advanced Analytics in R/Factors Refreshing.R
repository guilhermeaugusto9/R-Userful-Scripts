# importando o data set para o R o arquivo é o P3-Future-500-The-Dataset

fin <- read.csv(file.choose())

# lendo o arquivo

fin

str(fin)

# factor é basicamente uma forma de níveis de categoria que o R reconhece



# pode acontecer de uma coluna ser reconhecida automaticamente com int mas na verdade vc precisa que seja factor

# e o contrário também , voce precisa que seja numérico mas o R reconhece como factor então é preciso mudar para o tipo que precisamos





# de não factor para factor


fin$ID <-factor(fin$ID)  # basicamente voce declara a coluna novamente e usa a função factor () passando como parâmetro a coluna

str(fin)  # checando agora o ID esta como factor


# fazendo a mesma coisa para a coluna Inception

fin$Inception <- factor(fin$Inception)

str(fin)

summary(fin)
