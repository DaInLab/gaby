# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 9
df.ex9 <- read_excel("./dados/exercicio9.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))
#view(df.ex9)

# Realizando a distribuicao de frequência
# Transformando dados em vetor
ex9.em.vetor <- c(df.ex9$Salários)

# Criando a tabela de frequência
ex9.tabela <-table(ex9.em.vetor)

# Imprimindo a tabela de frequência
ex9.tabela
table(df.ex9)

# O Histograma
hist(df.ex9$Salários)
hist(df.ex9$Salários, breaks = 7, col = "pink", xlab = "Salário dos funcionários")
hist(df.ex9$Salários, breaks = 7, col = "pink", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")


