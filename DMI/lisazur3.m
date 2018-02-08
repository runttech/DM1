function lisazur2(f1,f2)
% animētā lisažu figūra
% šī ir funkcija
% to izsauc tikai no komandloka
% ar komandu lisazur(2,3)
% ar run tā nestrādās
t = 0:0.01:1;
%f1 = 6*pi; f2 = 12*pi;
shg
for faze = 0:pi/1000:2*pi
x = cos(2*pi*f1*t+faze);
y = sin(2*pi*f2*t);
plot(x,y)
pause(0.02)
end