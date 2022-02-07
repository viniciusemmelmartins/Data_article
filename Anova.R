# Se precisar carregar pacotes adicionais, siga os exemplos abaixo 
# install.packages("psych")
# library(psych)


# Ler os dados de um arquivo (interagindo com o usuário)
dados <- read.table(file.choose(),header=TRUE)

# Mostra boxplots das técnicas, lado a lado, em relação ao desempenho
boxplot(dados$desempenho ~ dados$tecnica)

# Mostra boxplots das classes, lado a lado, em relação ao desempenho
boxplot(dados$desempenho ~ dados$classe)

# Cria a tabela ANOVA usando as classes como blocos 
# Na terminologia mais comum:
# classe= bloco
# tecnica=tratamento
dados.anova <- aov(dados$desempenho ~ dados$tecnica + dados$classe)

# Mostra a tabela ANOVA
summary(dados.anova)

# Realiza e mostra os resultados de um pós-teste usando Tukey
TukeyHSD(dados.anova)


