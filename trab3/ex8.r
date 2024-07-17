# Dados do problema
amostra <- c(30.5, 34.1, 27.9, 35.0, 26.9, 30.2, 28.3, 31.7, 25.8)
n <- length(amostra)
mu_0 <- 30          # média hipotética
alpha <- 0.05       # nível de significância

# Cálculo da média da amostra
x_bar <- mean(amostra)

# Cálculo do desvio padrão da amostra
s <- sd(amostra)

# Estatística de teste (t-score)
t <- (x_bar - mu_0) / (s / sqrt(n))

# Valor crítico para um teste unicaudal (direita) com n-1 graus de liberdade
t_crit <- qt(1 - alpha, df = n - 1)

# Resultado do teste
if (t > t_crit) {
  cat("Rejeitamos a hipótese nula (H0). A média da precipitação anual é significativamente maior que 30 unidades.\n")
} else {
  cat("Não rejeitamos a hipótese nula (H0). Não há evidências suficientes para afirmar que a média da precipitação anual é maior que 30 unidades.\n")
}

# Imprimindo os valores calculados
cat("Média da amostra (x_bar):", x_bar, "\n")
cat("Desvio padrão da amostra (s):", s, "\n")
cat("Estatística de teste (t):", t, "\n")
cat("Valor crítico (t_crit):", t_crit, "\n")
