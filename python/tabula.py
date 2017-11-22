#!/usr/bin/python
# -*- coding: utf-8 -*-

print ("Lietotāj, ievadi skaitli")
a=eval (input("Lietotāj, ievadi skaitli!\n"))
b=type (a)
print ("Jūs ievadījāt skaitli %s, kura datu tips ir %s"%(a,b))
print ("1% %2 %3 %4 %5 %6 %7 %8 %9 %10")
r=0
while r<=10:
  k=1
  n=1
  while k<=10:
    print ("%s %(a%n),end=")
    n=n+1
    k=k+1
  print()
  r=r+1
  a=a+1
