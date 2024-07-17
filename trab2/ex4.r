# Dados Fornecidos
media_amostral <- 800
desvio_padrao_amostral <- 100
tamanho_amostra <- 400
nivel_confianca <- 0.99
intervalo <- 6.41

# Item (a): Calcular o intervalo de confiança de 99% para a média populacional

# Z-score para o intervalo de confiança de 99%
z_score <- qnorm(1 - (1 - nivel_confianca) / 2)

# Margem de erro
margem_erro <- z_score * (desvio_padrao_amostral / sqrt(tamanho_amostra))

# Intervalo de confiança
limite_inferior <- media_amostral - margem_erro
limite_superior <- media_amostral + margem_erro

cat("Intervalo de Confiança de 99%: [", limite_inferior, ", ", limite_superior, "]\n")

# Parte (b): Calcular o nível de confiança para o intervalo 800 ± 6.41

# Calcular os Z-scores para os limites
z_inferior <- (media_amostral - intervalo - media_amostral) / (desvio_padrao_amostral / sqrt(tamanho_amostra))
z_superior <- (media_amostral + intervalo - media_amostral) / (desvio_padrao_amostral / sqrt(tamanho_amostra))

# Nível de confiança
confianca <- pnorm(z_superior) - pnorm(z_inferior)

cat("Nível de confiança para 800 ± 6.41: ", confianca * 100, "%\n")
