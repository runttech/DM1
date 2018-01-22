# -*- coding: utf-8 -*-

from math import asin
import matplotlib.pyplot as plt
import numpy as np

x = 1. * input("Ievadi argumentu x: ")

y = asin(x)
print "standarta_arcsin(%.2f) = %.2f"%(x,y)
print " "

def my_asin(x):
    k = 0
    a = x
    S = a
    print "a%d = %.2f S%d = %6.2f"%(k,a,k,S)
    while k < 500:
        k += 1
        a = a*((2*k-1)**2*2*k*x*x)/(k**2*4*(2*k+1))
        S += a
        if k == 499:
            print "a%d = %.2f S%d = %6.2f"%(k,a,k,S)
        elif k== 500:
            print "a%d = %.2f S%d = %6.2f"%(k,a,k,S)
    return S


print " "
print "		   500"
print " 	  _____"
print "  	  \		     2*k+1"
print "		   \	   (2*k)! * x"
print "asin(%.2f) = > ______________________"%(x)
print "  	   /      2	          2*k"
print " 	  /____ (k)! * (2*k+1) * 2"
print " 	   k=0"

#x = np.arange(0.0, 6.28, 0.01)
#y = np.sin(x)
yy = my_asin(x)
#plt.plot(x,y)
#plt.plot(x,yy)
#plt.show()
print "mans_arcsin(%.2f) = %.2f"%(x,yy)
