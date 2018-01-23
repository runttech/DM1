"""
Fails: c01.py
Autors: ...
Datums: ...
Tiek izveidots tukshs fails c01.txt
Failu aizpilda ar tekstu. Tekstu modificee. Failu aizver
"""

fn = 'c01.txt'			# definee faila mnosakumu1

f = open(fn,"w")		# atver failu rakstiit un lasiit

print f.tell()			# pateikt atrasanas vietu faila

f.write("Python ir asakains\n") # faila ieraksta simbolu virkni

f.seek(7)			# rakstamgalvu notievo 7.pozicija
f.write("-p")
f.close()			# Failu aizver ciet !

print "Darbs ar failu pabeigts"
