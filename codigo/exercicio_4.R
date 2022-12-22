# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando os dados do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))

# Distribuição de frequencia
# Dados em vetor
ex4.em.vetor <- c(df.ex4$Salários)

# Criando a tabela de frequencia
ex4.tabela <-table(ex4.em.vetor)

# Imprimindo a tabela de frequência
ex4.tabela
table(df.ex4)


# Histograma de salários
hist(df.ex4$Salários)
hist(df.ex4$Salários, breaks = 7, col = "yellow", xlab = "Salário dos funcionários")
hist(df.ex4$Salários, breaks = 7, col = "purple", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")
hist(df.ex4$Salários, breaks = 7, col = "pink", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")