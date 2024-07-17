# Dados fornecidos
n <- 10
soma_x <- 43.28
soma_x_quadrado <- 188.4886

#Item a)

# Estimativas pontuais
media_x <- soma_x / n
variancia_x <- (soma_x_quadrado - (soma_x^2 / n)) / (n - 1)

cat("a) Estimativas pontuais:\n")
cat("   Média amostral (µ):", media_x, "\n")
cat("   Variância amostral (σ^2):", variancia_x, "\n")

#Item b)

# Intervalo de confiança para σ^2 com 75% de confiança
alpha <- 0.25
limite_inferior <- (n - 1) * variancia_x / qchisq(1 - alpha/2, df = n - 1)
limite_superior <- (n - 1) * variancia_x / qchisq(alpha/2, df = n - 1)

cat("\nb) Intervalo de 75% de confiança para σ^2:\n")
cat(sprintf("   [%f, %f]\n", limite_inferior, limite_superior))
