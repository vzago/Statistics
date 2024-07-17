import matplotlib.pyplot as plt
import numpy as np

reagente = [6.0, 5.5, 5.0, 7.5, 12.5]
substancia = [2.0, 3.0, 3.5, 4.0, 5.0]

plt.scatter(reagente, substancia)
plt.xlabel('Reagente (mg)')
plt.ylabel('Substância (mg)')
plt.title('Gráfico de Dispersão entre Reagente e Substância')
plt.grid(True)
plt.show()

correlacao = np.corrcoef(reagente, substancia)[0, 1]
#print(f"Coeficiente de Correlação de Pearson: {correlacao:.2f}")

if correlacao > 0:
    relacao = "positiva"
elif correlacao < 0:
    relacao = "negativa"
else:
    relacao = "não linear"

print(f"A quantidade de reagente utilizada está relacionada com a quantidade de substância produzida de forma {relacao}.")
