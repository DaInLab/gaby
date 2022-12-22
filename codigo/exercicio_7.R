# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
library(tidyverse)
library (ggplot2)

# Importando arquivo do Exercício 7
df.ex7 <- read_excel("./dados/exercicio7.xls",skip = 1, col_names = c("Áreas", "Atendimentos"), col_types = c("text", "numeric"))
#view(df.ex7)
df.ex7

# Transformando dados em vetor
ex7.em.vetor <- c (df.ex7$Áreas)

# Criando o gráfico
ggplot(df.ex7, aes( y= Atendimentos, x = Áreas, fill = Áreas))+
  geom_bar (stat = "identity")
