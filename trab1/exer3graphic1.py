import pandas as pd
import matplotlib.pyplot as plt

dados = {
    'Grau de Instrução': ['Fundamental', 'Médio Incompleto', 'Médio Completo', 'Superior', 'Pós-graduação'],
    'Percentual': [40, 10, 25, 17, 8]
}
df = pd.DataFrame(dados)

# Gráfico de Barras
plt.figure(figsize=(10, 8))
plt.bar(df['Grau de Instrução'], df['Percentual'], color='skyblue', width=0.6)
plt.title('Distribuição do Grau de Instrução dos Funcionários', fontsize=24)
plt.xlabel('Grau de Instrução', fontsize=18)
plt.ylabel('Percentual (%)', fontsize=16)
plt.xticks(rotation=45, fontsize=16)
plt.yticks(fontsize=16)
plt.grid(axis='y', linestyle='--', linewidth=0.7)
plt.tight_layout()  
plt.show()
