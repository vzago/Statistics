# Dados fornecidos
n <- 81
media_amostral <- 67.3849
desvio_padrao_amostral <- 3.3498
ic_inferior <- 66.6554
ic_superior <- 68.1144

# (a) Estimativa pontual da média populacional
estimativa_pontual <- media_amostral

# (b) Margem de erro
epsilon <- ic_superior - media_amostral

# Saída
cat("a) Estimativa pontual da média populacional (µ):", estimativa_pontual, "\n")
cat("b) Intervalo de Confiança de 95% na forma x̄ ± ε:", media_amostral, "±", epsilon, "\n")
