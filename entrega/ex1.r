# Dados fornecidos
dados <- c(48, 51, 52, 49, 47, 50, 54, 53, 55, 48, 50, 52, 51, 49, 53, 52, 50, 49, 48, 52, 53, 51, 54, 50, 49)
n <- length(dados)  # tamanho da amostra
alpha <- 0.05  # nível de significância (5%)

# Média amostral e desvio padrão amostral
media_amostral <- mean(dados)
desvio_padrao_amostral <- sd(dados)

# Valor crítico da distribuição t de Student
t_critico <- qt(1 - alpha/2, df = n - 1)

# Erro padrão da média (EP)
EP <- desvio_padrao_amostral / sqrt(n)

# Intervalo de confiança para a média populacional (µ)
limite_inferior <- media_amostral - t_critico * EP
limite_superior <- media_amostral + t_critico * EP

# Saída dos resultados
cat("a) Intervalo de confiança de 95% para a média populacional da quantidade de concreto necessária:\n")
cat(sprintf("   [%.2f, %.2f]\n", limite_inferior, limite_superior))
