import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


tempos_secagem = [3.4, 2.5, 4.8, 2.9, 3.6, 2.8, 3.3, 5.6, 3.7, 2.8, 4.4, 4.0, 5.2, 3.0, 4.8]

df = pd.DataFrame(tempos_secagem, columns=['Tempo de Secagem'])
eixo_x = [2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0]

media = np.mean(tempos_secagem)
mediana = np.median(tempos_secagem)
variancia = np.var(tempos_secagem, ddof=1)  
desvio_padrao = np.std(tempos_secagem, ddof=1)  
quartis = np.percentile(tempos_secagem, [25, 50, 75])
Q1, Q3 = quartis[0], quartis[2]

plt.figure(figsize=(10, 6))
plt.hist(tempos_secagem, bins= eixo_x, edgecolor='black', color='green')
plt.title('Histograma do Tempo de Secagem da Tinta', fontsize = 22)
plt.xlabel('Tempo de Secagem (horas)', fontsize = 18)
plt.ylabel('Frequência', fontsize = 18)
plt.grid(axis='y', linestyle='--', linewidth=0.7)
plt.axvline(media, color='blue', linestyle='dashed', linewidth=2, label=f'Média: {media:.2f}')
plt.axvline(mediana, color='red', linestyle='dashed', linewidth=2, label=f'Mediana: {mediana:.2f}')
plt.axvline(Q1, color='orange', linestyle='dashdot', linewidth=2, label=f'Primeiro Quartil (Q1): {Q1:.2f}')
plt.axvline(Q3, color='brown', linestyle='dashdot', linewidth=2, label=f'Terceiro Quartil (Q3): {Q3:.2f}')


plt.legend()
plt.show()
