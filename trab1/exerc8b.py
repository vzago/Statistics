import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

vida_bombas = [
    2.0, 3.0, 0.3, 3.3, 1.3, 0.4, 0.2, 6.0, 5.5, 6.5,
    0.2, 2.3, 1.0, 6.0, 5.6, 1.5, 4.0, 5.9, 1.8, 4.7,
    0.7, 4.5, 0.3, 1.5, 0.5, 2.5, 5.0, 6.0, 1.2, 0.2
]
df = pd.DataFrame(vida_bombas, columns=['Vida Útil'])

freq_absoluta = df['Vida Útil'].value_counts().sort_index()
freq_relativa = freq_absoluta / len(df)
freq_acumulada = freq_absoluta.cumsum()
freq_relativa_acumulada = freq_relativa.cumsum()

frequencia_df = pd.DataFrame({
    'Frequência Absoluta': freq_absoluta,
    'Frequência Relativa': freq_relativa,
    'Frequência Acumulada': freq_acumulada,
    'Frequência Relativa Acumulada': freq_relativa_acumulada
})

print(frequencia_df)
