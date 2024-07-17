# Dados do problema
n <- 1002  # tamanho da amostra
x <- 701   # número de pessoas que disseram ter votado
p_real <- 0.61  # proporção real de eleitores que votaram
nivel_confianca <- 0.99  # nível de confiança para o intervalo de confiança

# (a) Intervalo de confiança com 99% de confiança para a proporção de pessoas que dizem ter votado

# Proporção amostral
p_amostral <- x / n

# Z-score para 99% de confiança (intervalo bilateral)
z <- qnorm((1 + nivel_confianca) / 2)

# Margem de erro (otimista)
margem_erro_otimista <- z * sqrt(p_amostral * (1 - p_amostral) / n)
# Intervalo de confiança otimista
ic_inferior_otimista <- p_amostral - margem_erro_otimista
ic_superior_otimista <- p_amostral + margem_erro_otimista

cat("a) Intervalo de confiança de 99% (otimista) para a proporção de pessoas que dizem ter votado: ", ic_inferior_otimista, "a", ic_superior_otimista, "\n")

# Intervalo de confiança conservador
p_conservador <- p_real  # assumindo a proporção real como base
margem_erro_conservador <- z * sqrt(p_conservador * (1 - p_conservador) / n)
ic_inferior_conservador <- p_amostral - margem_erro_conservador
ic_superior_conservador <- p_amostral + margem_erro_conservador

cat("Intervalo de confiança de 99% (conservador) para a proporção de pessoas que dizem ter votado:", ic_inferior_conservador, "a", ic_superior_conservador, "\n")

# (b) Teste de hipótese para verificar se os resultados da pesquisa estão de acordo com a proporção real

# Estatística de teste (Z-score)
z_teste <- (p_amostral - p_real) / sqrt(p_real * (1 - p_real) / n)

# Valor-p
valor_p <- 2 * pnorm(-abs(z_teste))

# Comparação com o nível de significância comum (alfa = 0.05)
alfa <- 0.05

if (valor_p < alfa) {
  cat("b) Os resultados da pesquisa não estão de acordo com o resultado real de votantes (61%).\n")
  cat("Há evidências suficientes para rejeitar a hipótese de que a proporção amostral é igual à proporção real.\n")
} else {
  cat("b) Os resultados da pesquisa estão de acordo com o resultado real de votantes (61%).\n")
  cat("Não há evidências suficientes para rejeitar a hipótese de que a proporção amostral é igual à proporção real.\n")
}
