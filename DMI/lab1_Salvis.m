%% 1. Laboratorijas darbs
load x_y.mat

% Ielādē attēlus
A = imread('figure1.png');
B = imread('figure2.png');

% Attēlot attēlus
figure(1),image([300 800],[1 0],A)
set(gca,'Ydir','normal')
%set(gca,'YDir','normal');
%[x,y] = ginput(7)
x = [  372.7445  438.5657  467.4347  518.2441  539.0298  588.6844  735.3389];
y = [    0.0023    0.9243    0.2607    0.7364    0.6923    0.9977    0.0229];
C = polyfit(x,y,6);
U = 350:0.01:750;
I = polyval(C,U);
figure(3),plot(x,y,'o',U,I)