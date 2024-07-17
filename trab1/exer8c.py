import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

vida_bombas = [
    2.0, 3.0, 0.3, 3.3, 1.3, 0.4, 0.2, 6.0, 5.5, 6.5,
    0.2, 2.3, 1.0, 6.0, 5.6, 1.5, 4.0, 5.9, 1.8, 4.7,
    0.7, 4.5, 0.3, 1.5, 0.5, 2.5, 5.0, 6.0, 1.2, 0.2
]
media = np.mean(vida_bombas)
amplitude = np.ptp(vida_bombas)
desvio_padrao = np.std(vida_bombas, ddof=1)

print(f'Média: {media:.3f}')
print(f'Amplitude: {amplitude:.3f}')
print(f'Desvio Padrão: {desvio_padrao:.3f}')
