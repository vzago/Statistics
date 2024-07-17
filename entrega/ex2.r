# Dados fornecidos
dados <- c(980, 1020, 995, 1015, 990, 985, 1005, 1025, 975, 1003, 1022, 990, 1008, 1012, 990, 1010, 1015, 1001, 985, 1030,
           1003, 995, 1020, 980, 1020, 1015, 1002, 990, 980, 1018, 1025, 975, 1015, 1008, 1010, 1002, 1005, 1035, 990, 1001,
           1020, 995, 1010, 1025, 985, 1020, 1005, 1015, 1000)
n <- length(dados)  # tamanho da amostra
alpha <- 0.05  # nível de significância
media_amostral <- 1002  # média amostral
desvio_padrao_amostral <- 29.66  # desvio padrão amostral
media_nula <- 1000  # média sob a hipótese nula

# Estatística de teste (t)
t_estatistica <- (media_amostral - media_nula) / (desvio_padrao_amostral / sqrt(n))

# Valor crítico da distribuição t de Student
graus_liberdade <- n - 1
t_critico <- qt(1 - alpha/2, df = graus_liberdade)

# Valor-p
valor_p <- 2 * pt(-abs(t_estatistica), df = graus_liberdade)

# Decisão
cat("Estatística de teste (t):", t_estatistica, "\n")
cat("Valor crítico (t):", t_critico, "\n")
cat("Valor-p:", valor_p, "\n")

if (abs(t_estatistica) > t_critico) {
  cat("Rejeitar H0: A afirmação do fabricante não é suportada pelos dados.\n")
} else {
  cat("Aceitar H0: Não há evidências suficientes para rejeitar a afirmação do fabricante.\n")
}
