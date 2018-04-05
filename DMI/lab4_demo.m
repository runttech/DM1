%-- 04/05/2018 08:30:55 AM --%
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7;E1=1;E2=2;E3=3;
R = [R1+R2+R3  -R2  0;
-R2  R2+R4+R5 -R5;
0       -R5   R5+R6+R7];
E=[E1;-E2;-E3];
R_m_p = inv(R);
Ik = R_m_p*E
% R*Ik = E
Ik = R\E
% 1. atrast IR2-?
% 2. atrast UR2-?
% 3. atrast PR2-?
IR2 = Ik(1,1)-Ik(2,1)
UR2 = IR2*R2
PR2 = IR2*UR2
% cits gadijums
% trīš laika momenti
% trīs sprieuma vērtības
E1=[1 -1 0];
E2=[2 -2 0];
E3=[3 -3 0];
E = [E1;-E2;-E3];
% risināsim vienādojumu sistēmu
Ik = R\E
% atrast IR1-?
IR1 = Ik(1,:)
% atrast UR1-?
UR1 = IR1*R1
% atrast PR1-?
PR1 = UR1*IR1
PR1 = UR1.*IR1
%% Laika mainīgie signāli
t = 0:0.01:1;
E1=2*cos(2*pi*2*t);
E2=5
E3=3*sin(2*pi*3*t);
E2=5*ones(size(t));
E = [E1;-E2;-E3];
% risināsim vienādojumu sistēmu
Ik = R\E;
% atrast un uzzīmēt IR6.
IR6 = (3,:);
IR6 = Ik(3,:);
plot(IR6)
plot(t,IR6)
% atrast un uzzīmēt UR6.
hold on
UR6 = IR6*R6;
plot(t,UR6)
% atrast un uzzīmēt PR6.
PR6 = UR6.*IR6;
plot(t,PR6)
%% Kā pārnaudīt rezultātus
% vai nekur neesam kļūdijušies
% pārbaudīsim KSpL
% 3.kontūram
% C kontūram
% UR6+UR7+UR5+E3==0
% Utst = UR6+UR7+UR5+E3;
% plot(t,Utst)
% rezultāts ko sagaidām Utst = 0
IR7 = (3,:);
IR7 = Ik(3,:);
UR7 = IR7*R7
IR7 = Ik(3,:);
UR7 = IR7*R7;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
Utst = UR6+UR7+UR5+E3;
plot(t,Utst)
Ik
UR6
plot(t,Utst)
diary off