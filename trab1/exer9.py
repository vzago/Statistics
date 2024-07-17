import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

data_women = {
    "País": ["Argentina", "Brasil", "Chile", "Colômbia", "Alemanha", "França", "Portugal", "Canadá", "USA", "Kenya"],
    "100m (seg)": [11.61, 11.31, 12.00, 11.60, 11.01, 11.15, 11.81, 11.00, 10.79, 11.73],
    "400m (seg)": [54.50, 52.80, 54.90, 53.26, 48.16, 51.73, 54.30, 50.06, 50.62, 52.70],
    "3000m (min)": [9.79, 9.77, 9.37, 9.46, 8.75, 8.98, 8.84, 8.81, 8.50, 9.20],
    "Maratona (min)": [178.52, 168.75, 171.38, 165.42, 148.53, 155.27, 151.20, 149.50, 142.72, 181.05]
}

data_men = {
    "País": ["Argentina", "Brasil", "Chile", "Colômbia", "Alemanha", "França", "Portugal", "Canadá", "USA", "Kenya"],
    "100m (seg)": [10.39, 10.22, 10.34, 10.43, 10.16, 10.11, 10.53, 10.17, 9.93, 10.46],
    "400m (seg)": [46.84, 45.21, 46.20, 46.10, 44.50, 45.28, 46.70, 45.68, 43.86, 44.92],
    "3000m (min)": [14.04, 13.62, 13.61, 13.49, 13.21, 13.34, 13.13, 13.55, 13.20, 13.10],
    "Maratona (min)": [137.72, 133.13, 134.03, 131.35, 132.23, 132.30, 128.65, 131.15, 128.22, 129.75]
}

df_women = pd.DataFrame(data_women)
df_men = pd.DataFrame(data_men)
df_women['Sexo'] = 'Mulheres'
df_men['Sexo'] = 'Homens'
df = pd.concat([df_women, df_men])

sns.set(style="whitegrid")
plt.figure(figsize=(16, 12))
plt.suptitle("Comparação entre Homens e Mulheres nas Olimpíadas de 1984", fontsize=20)

plt.subplot(2, 2, 1)
sns.boxplot(x="Sexo", y="100m (seg)", hue="Sexo", data=df, palette="pastel", dodge=False)
plt.title("100m (seg)", fontsize=16)
plt.xlabel("")
plt.ylabel("Tempo (seg)", fontsize=14)
plt.legend([],[], frameon=False)

plt.subplot(2, 2, 2)
sns.boxplot(x="Sexo", y="400m (seg)", hue="Sexo", data=df, palette="pastel", dodge=False)
plt.title("400m (seg)", fontsize=16)
plt.xlabel("")
plt.ylabel("Tempo (seg)", fontsize=14)
plt.legend([],[], frameon=False)

plt.subplot(2, 2, 3)
sns.boxplot(x="Sexo", y="3000m (min)", hue="Sexo", data=df, palette="pastel", dodge=False)
plt.title("3000m (min)", fontsize=16)
plt.xlabel("")
plt.ylabel("Tempo (min)", fontsize=14)
plt.legend([],[], frameon=False)

plt.subplot(2, 2, 4)
sns.boxplot(x="Sexo", y="Maratona (min)", hue="Sexo", data=df, palette="pastel", dodge=False)
plt.title("Maratona (min)", fontsize=16)
plt.xlabel("")
plt.ylabel("Tempo (min)", fontsize=14)
plt.legend([],[], frameon=False)

plt.tight_layout(rect=[0, 0.03, 1, 0.95])
plt.show()
