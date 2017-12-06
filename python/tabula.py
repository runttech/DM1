#!/usr/bin/python
#-*- coding: utf-8 -*-

print ("Lietotāj, ievadi skaitli!")
a=eval(input("Lietotāj, ievadiet skaitli!\n"))
b=type(a)
print ("Jūs ievadījāt skaitli %s, kura datu tips ir %s\n"%(a,b))
digit=len(str(a))
atstarpe=' '*digit
print ("%s"%(atstarpe), end=' ')
print ("%1 %2 %3 %4 %5 %6 %7 %8 %9 %10")
r=0
while r<=10:
    print ("%d"%(a), end=' ')
    k=1 
    n=1 
    while k<=10:
        print ("%d "%(a%n), end=' ')
        n=n+1
        k=k+1
    r=r+1
    a=a+1
    print()
