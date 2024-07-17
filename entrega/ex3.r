# Dados observados
observado <- c(85, 55, 45, 15)
n <- sum(observado)  # tamanho da amostra

# Distribuição esperada pelo vendedor (em %)
esperado_percentuais <- c(0.4, 0.3, 0.2, 0.1)

# Frequências esperadas sob a hipótese nula
esperado <- esperado_percentuais * n

# Teste de qui-quadrado
qui_quadrado <- sum((observado - esperado)^2 / esperado)

# Graus de liberdade
gl <- length(observado) - 1

# Valor crítico da distribuição qui-quadrado
alfa <- 0.05
qui_critico <- qchisq(1 - alfa, df = gl)

# Valor-p
valor_p <- 1 - pchisq(qui_quadrado, df = gl)

# Decisão
cat("Estatística de teste (qui-quadrado):", qui_quadrado, "\n")
cat("Valor crítico (qui-quadrado):", qui_critico, "\n")
cat("Valor-p:", valor_p, "\n")

if (qui_quadrado > qui_critico) {
  cat("Rejeitar H0: Os dados observados não seguem a distribuição alegada pelo vendedor.\n")
} else {
  cat("Aceitar H0: Não há evidências suficientes para rejeitar a distribuição alegada pelo vendedor.\n")
}
