# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3
df.ex3 <- read_excel("./dados/ex3.xlsx",skip = 1, col_names = c("Filhos" ,"Familias"), col_types = c("numeric"))

# Transformando tabela em vetores
tabela.ex3 <- c(df.ex3)
tabela.ex3

# Mediana - Numero de filhos
ex3.mediana <- median(df.ex3$Filhos)
ex3.mediana

# Moda - NUmero de filhos
tabfreq.ex3 <- table(tabela.ex3)
tabfreq.ex3

tabfreq.ex3[tabfreq.ex3 == max(tabfreq.ex3)]
