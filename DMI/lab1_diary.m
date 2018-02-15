% doti mērījumu dati
% kurus mēs noformēsim kā vektorus
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
%% Pamēģināsim uzzīmēt grafiku
plot(Um,Im,'o-')
% iznāca lauzta, līnija tas mums neder
% tāpēc mēģināsim uzminēt
% kāda matemātiskā sakarība apraksta
% Im atkarību no Um
%%
% Pieņemsim ka sakarību apraksta
% 2.kārtas polinoms
% y = C(1)*x.^2+C(2)*x+C(3);
% Polinoma koeficientus atradīs
% Matlab funkcija POLYFIT
% sintakse ir šāda:
% C = polyfi(x,y,N)
% kur N - ir polinoma kārta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

% lai iegūtu gludu līniju
% noformēsim vēl vienu "x"
U = -1:0.01:3.2;
% tad rēķināsim "y"
I = C(1)*U.^2+C(2)*U+C(3);
% zīmēsim grafiku
% mērījumu dati būs ar aplīšiem
% pielaikotais polinoms ar līniju
plot(Um,Im,'o',U,I)
% Lai iegūtu labākus rezultāts paņemsim
% 3.kārtas polinomu
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
% Tagad izmēģināsim POLYVAL fnkc.
C = polyfit(Um,Im,3);
% I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% Piebilde 
% POLYFIT = polynomial FITting rēkina koef
% POLYVAL = POLYnomial VALues rēķina vērtības
%% Atkārtot 4.kārtai
C = polyfit(Um,Im,4);
C = polyfit(Um,Im,4)

C =

   -0.0557    0.4436   -0.6159    0.0221    2.2373

I = C(1)*U.^4+C(2)*U.^3+C(3)*U.^2+C(4)*U+C(5);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
% Interpulācija
% pie kārtas vienādas ar punktu skaits -1
% iznāk polinomiālā interpolācija
% iet precīzi caur punktiem
% iespriekšējus gadījumus sauca par
% polinomiālā aproksimācija

%% ja kārta ir pārāk liela
C = polyfit(Um,Im,10);
{Warning: Polynomial is not unique; degree >= number of data points.} 
> In <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/matlab/polyfun/polyfit.m',72,1)">polyfit at 72</a>
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%% Ja sakarība ir lineāra
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% Vairākas mērijumu sērijas
% pieņemsim ka mēs mainam spriegumu
% bet strāvu mēram 5 reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.5 4.4;
         1.0 2.1 2.3 3.4 4.6];
% kā matlab zīmēs matricas?
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')
% sec. matlab zīme matricas pa stabiņiem
% lai polyfit varētu aprēķināt ir jāpaņem
% vidēja vērtība
Ivid = mean(Im);
Ivid = mean(Im)

Ivid =

    0.9600    2.0400    2.3800    3.3600    4.5000

C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
% uzzīmēsim
% ar aplīšiem apzīmējiet mērijumu datus
% ar melnām zvaigznītēm apzīmējiet vidējo
% ar līniju apzīmējiet pielaikoto polinomu
figure,plot(Um,Im','ko-')
figure,plot(Um,Im','k*-')
figure,plot(Um,Im','*k-')
figure,plot(Um,Im','*k-',U,I)
figure,plot(Um,Im','*k-')
Ivid = mean(Um)

Ivid =

    1.3000

figure,plot(Um,Im','*k-')
Ivid = mean(Im);
figure,plot(Um,Im','*k-')
plot(Um,Ivid','k*',Um,Im','o',U,I,'-')
%% kā attēlot vid. kvadrātisko novirzi
Ivid_kv_novirze = std(Im);
errorbar(Um,Ivid,Ivid_kv_novirze)
%%
%% Datu iegūšana no grafiski uzdotiem datiem
cd

/home/user

ls
:09.c.save				      LAB
123					      lab0202a.png
123123123.png				      lab0202k.png
13					      lab0303k.png
1B1.py					      lab03_atskaite(1).pdf
2016-04-01--1459492884_1440x900_scrot.png     lab03_atskaite.pdf
2016-05-10--1462884385_1440x900_scrot.png     lab0404.png
2016-05-10--1462884449_108x197_scrot.png      lab1_diary.m
2016-05-10--1462884504_674x572_scrot.png      Lab1_m(1).pdf
27					      Lab1_m(2).pdf
303.c					      lab1_matlab
304.c					      Lab1_m.pdf
3051.c					      Lab1.m.zip
3052.c.save				      Lab1.pdf
305.c					      Lab2(1).pdf
30.c					      Lab2(2).pdf
31.c					      Lab2(3).pdf
321321321.png				      lab2A(1).pdf
32.c					      lab2A.pdf
33.c					      lab2.jpg
34a.c					      Lab2.pdf
34.c					      lab2_publish.pdf
34.dat					      Lab2_sergejs.png
35a.c					      lab3bilde.png
35a.c.save				      lab3.m
35.c					      lab3.pdf
4lab.m					      Lab4_DV.png
901.c					      lab4.m
901dati					      lab5.m
902.c					      lab6lm.m
902.c.save				      laba_8a.svu
a					      Labs.pdf
aaa					      ld3c.fcn
ab					      ld3c.m
abc					      live-editor-master
Abc					      live-editor-master(1).zip
ABC					      live-editor-master(2).zip
abc2					      live-editor-master.zip
abc.c					      l.save
abcd					      ls_komandas_apraksts
abc.out					      main2.pdf
Adafruit_SHARP_Memory_Display-master	      main.qpf
Adafruit_SHARP_Memory_Display-master.zip      main.qsf
a.dat					      main.qws
Archa.png				      main.vhd
Arduino					      makehuman
arduino-1.6.8				      makehuman-1.0.2_all.deb
arduino-1.6.8-linux32.tar(1).xz		      maks.c
arduino-1.6.8-linux32.tar(2).xz		      mana_mape
arduino-1.6.8-linux32.tar(3).xz		      mans_skripts
arduino-1.6.8-linux32.tar.xz		      mape1
arduino-1.6.8-linux64.tar.xz		      mape2
arduino-1.8.1-linux32.tar.xz		      matlab
Artix Nekl				      matlab1.mat
asd.c					      matlab2.m
atskaites_sagatave_2014(10).tex		      matlab_crash_dump.2930-1
atskaites_sagatave_2014(11).tex		      matlab_crash_dump.2982-1
atskaites_sagatave_2014(12).tex		      matlab_crash_dump.2985-1
atskaites_sagatave_2014(1).tex		      matlab_crash_dump.3096-1
atskaites_sagatave_2014(2).tex		      matlab_crash_dump.3134-1
atskaites_sagatave_2014(3).tex		      matlab_crash_dump.3179-1
atskaites_sagatave_2014(4).tex		      matlab_crash_dump.3209-1
atskaites_sagatave_2014(5).tex		      matlab_crash_dump.4700-1
atskaites_sagatave_2014(6).tex		      matlab_crash_dump.4845-1
atskaites_sagatave_2014(7).tex		      matlab_lab0
atskaites_sagatave_2014(8).tex		      Matlab_lab_1.pdf
atskaites_sagatave_2014(9).tex		      mux1.cmp
atskaites_sagatave_2014.tex		      mux1_inst.vhd
bbb					      mux1.qip
bcd.tx					      mux1.vhd
blender-2.76b-linux-glibc211-i686	      my.c
blender-2.76b-linux-glibc211-i686(1).tar.bz2  nano.save
blender-2.76b-linux-glibc211-i686.tar	      nano.save.1
blender-2.76b-linux-glibc211-i686.tar.bz2     newmet5.m
blender-2.76b-linux-glibc211-x86_64	      operators.sh.save
blender-2.76b-linux-glibc211-x86_64.tar       palms.jpg
blenderis.blend				      Pavels
blendertools				      pavels.c
blendertools-1.0.2-all.zip		      prjamaja0303.png
call.c					      public_html
ccc					      PYTHON
cita_mana_mape				      Qbc
clock_test.mdl				      raphcoco TP5.1.png
darbi					      raphcoco TP5.2.png
darbi1					      raphcoco TP6.png
darbi123				      raphe coco 1.2 laboratory 4.png
darbi2					      raphe coco 1 laboratory 4.png
Darbi2					      raphe coco 2.2 laboratory 4.png
darbicb					      raphe coco 2 laboratory 4.png
darbs3.m				      raphe coco lab 7.1.png
db					      raphe coco lab 7.2.png
Deep_Learning_with_Keras.bibtex		      raphe coco lab 7.3.png
Desktop					      raphe coco lab 7.4.png
dialogs.sh				      raphe coco lab 7.png
DMI					      rebc01
DMIPYTHON				      rezistors2.png
documents				      rezistors_juliana_rebc04.png
Documents				      rezultaaats
Doston Hamrakulov			      roots.py
Downloads				      roots.py.save
escaillaslab4ji.png			      rtu
escaillaslab4.png			      rtu_logo.png
escaillas.png				      RTU_logo.png
ESTELLE					      s
figure2.png				      screenjulia.png
figure.png				      Screenshot - 03082017 - 01:46:52 PM.png
fiz_10_1.pdf				      Screenshot - 03082017 - 01:50:32 PM.png
fund.m					      Screenshot - 03312016 - 11:04:26 AM.png
funx.m					      Screenshot - 10132017 - 03:51:13 PM.png
garcialab3.png				      screenshot_lab4.png
gitupload				      sinusoida0303.png
git-upload				      slprj
grafiks1.png				      snake
grafiks2lab2.png			      snake2
grafiks2lab.jpg				      snake.ino
greybox_tmp				      something new
header-logo-inverse.510f97e92635.png	      ss
if_CO4.sh.save				      sss.c
if.py.swp				      sudsssss.rtf
image1.JPG				      temp
image2.JPG				      test321.m
inbox.save				      test333.m
interese.txt				      testedv.m
ja.py					      testlab.m
juliana_vangovska_rebc04.png		      The_Hitchhiker_s_Guide_to_the_Galaxy_Hit.bibtex
ko					      trial
kontroldarbu_rezultaati_update.xlsx	      untitled.m
ku					      VirtualBox VMs
L09.c					      why2.png
L14					      why.png
L1B					      zmeja
l1ch.save

%% Pieņemsim ka mums ir grafiks JPG formātā
% 1.ielasam JPG uz matlabu
A = imread('image1.JPG');
B = imread('image2.JPG');
% 2.uzzīmēsim
figure(1),image(A);
%%
figure(2),image(B);
figure(2),image(B);
figure(2),image([0 14],[0 80],B)
figure(2),image([0 14],[80 0],B)
figure(2),image([0 14],[0 80],B)
set(gca,'YDir','normal')
figure(2),image([0 14],[80 0],B)
figure(2),image([0 14],[0 80],B)
figure(2),image([0 14],[80 0],B)
set(gca,'YDir','normal')
%% Tagad varam nolasit datus!!!
shg
[x,y]=ginput(8)

x =

    3.6872
    4.6891
    6.4990
    7.9534
    8.9877
   10.4744
   11.9288
   12.9631


y =

   10.3154
   20.3969
   30.2296
   35.3326
   37.4485
   40.3112
   42.3026
   43.6717

diary off
