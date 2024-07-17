import pandas as pd
import matplotlib.pyplot as plt

dados = {
    'Grau de Instrução': ['Fundamental', 'Médio Incompleto', 'Médio Completo', 'Superior', 'Pós-graduação'],
    'Percentual': [40, 10, 25, 17, 8]
}
df = pd.DataFrame(dados)
# Gráfico de Setores
plt.figure(figsize=(8, 8))
plt.pie(df['Percentual'], labels=df['Grau de Instrução'], autopct='%1.1f%%', startangle=140, colors=['skyblue', 'lightgreen', 'orange', 'lightcoral', 'violet'], textprops={'fontsize': 18})
plt.title('Distribuição do Grau de Instrução dos Funcionários', fontsize=30)
plt.show()
