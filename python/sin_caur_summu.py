# -*- coding: utf-8 -*-
from math import sin

def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    print "Izdruka no liet.f. a0 = %6.2f S0 = %6.2f"%(a,S)

    while k < 3:
        k = k + 1
        R = (-1)* x**2/((2*k)*(2*k+1))
        a = a * R
        S = S + a
        print "Izdruka no liet.f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
    print "Izdruka no liet.f. Beigas!"
    return S


x = 1.* input("Izdruka no galv.f Lietotāj, ievadi x argumentu: ")
y = sin(x)
print "Izdruka no galv.f. standarta sin(%.2f) = %.2f"%(x,y)
yy = mans_sinuss(x)
print "Izdruka no galv.f. mans sin(%.2f) = %.2f"%(x,yy)


'''
   00
  ----
  \      (-1)**k*x**(2*k+1)
   \     ------------------  
   /          (2*k+1)
  /
  ----
   k=0
'''
