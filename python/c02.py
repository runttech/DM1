"""
Fails: c02.py
Autors: ...
Datums: ...
Tiek nolasiits fails c01.txt
1. Katrs baits tiek interpretets ka skaitlis
   un izdrukats sedecimala formata.
2. Katrs baits, kas interpretets ka skaitlis
   tiek izdrukaats ka simbols
Failu aizver.
"""
f = open("c01.txt","rb")  # atveram failu lasisana
f.seek(0)		  # failu attin uz sakumu

while 1:
    b = f.read(1)
    if not b:
	break
    print hex(ord(b))
    print chr(ord(b))

f.close()
