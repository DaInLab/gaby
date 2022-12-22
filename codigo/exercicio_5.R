# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando as bibliotecas
library(readxl)
library(tidyverse)
library (ggplot2)


# Importando o arquivo do Exercício 5
dataframe.ex5 <- read_excel("./dados/exercicio5.xls",skip = 1, col_names = c("Marcas", "Numero_pessoas"), col_types = c("text", "numeric"))
#view(df.ex5)

# Transformando os dados em vetor
ex5.em.vetor <- c (dataframe.ex5$Marcas)

# Criando o gráfico de barras
ggplot(dataframe.ex5, aes( y= Numero_pessoas, x = Marcas, fill = Marcas))+ geom_bar (stat = "identity")

