# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
from math import sin
import numpy as np

def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a

    while k < 3:
        k = k + 1
        R = (-1)* x**2/((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S

x = np.arange(0.0, 6.28, 0.01)
y = np.sin(x)

plt.plot(x,y)
plt.ylabel('y')
plt.show()
