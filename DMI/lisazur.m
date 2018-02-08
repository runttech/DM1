function lisazur3(f1,f2)
% šī it funkcija
% to izsauc tikai no komandloka
% ar komandu lisazur(2,3)
% ar run tā nestrādās
t = 0:0.01:1;
%f1 = 21; f2 = pi;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot(x,y)