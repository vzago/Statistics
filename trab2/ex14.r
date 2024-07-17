# Amostra fornecida
amostra <- c(9, 8, 12, 7, 9, 6, 11, 6, 10, 9)
n <- length(amostra)  # tamanho da amostra

# Média amostral e desvio padrão amostral
media_x <- mean(amostra)
dp_x <- sd(amostra)

# (a) Intervalo de confiança de 95% para µ

alpha_a <- 0.05  # nível de significância
gl_a <- n - 1  # graus de liberdade para distribuição t

# Valor crítico da distribuição t de Student
t_critico_a <- qt(1 - alpha_a/2, df = gl_a)

# Intervalo de confiança para µ
ic_inferior_a <- media_x - t_critico_a * (dp_x / sqrt(n))
ic_superior_a <- media_x + t_critico_a * (dp_x / sqrt(n))

cat("a) Intervalo de confiança de 95% para µ:\n")
cat(sprintf("   [%.4f, %.4f]\n", ic_inferior_a, ic_superior_a))

# (b) Intervalo de confiança de 90% para σ^2

alpha_b <- 0.10  # nível de significância
gl_b <- n - 1  # graus de liberdade para distribuição chi-quadrado

# Variância amostral
variancia_x <- var(amostra)

# Valor crítico da distribuição chi-quadrado
chi2_inferior_b <- qchisq(alpha_b/2, df = gl_b)
chi2_superior_b <- qchisq(1 - alpha_b/2, df = gl_b)

# Intervalo de confiança para σ^2
ic_inferior_b <- (gl_b * variancia_x) / chi2_superior_b
ic_superior_b <- (gl_b * variancia_x) / chi2_inferior_b

cat("\nb) Intervalo de confiança de 90% para σ^2:\n")
cat(sprintf("   [%.4f, %.4f]\n", ic_inferior_b, ic_superior_b))
