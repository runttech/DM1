%% Laboratorijas darbs 4
%% Salvis Timošenko

R1=1;R2=2;R3=3;R4=10;R5=5;R6=6;R7=7;
t = 0:0.01:8;
E3=lab3_demo_fun(t);
E2=sin(2*t);
E1=2;
R8=8;
R = [R1+R2+R3 -R2 0;
-R2 R2+R4+R5+R6 -R5;
0 -R5 R5+R7+R8];
E1=2*ones(size(t));
E=[E1;-E2;-E3];
R_m_p = inv(R);
Ik = R\E;
IR6 = Ik(2,:);
UR6 = IR6*R6;
plot(t,UR6)
PR6 = UR6.*IR6;
hold on
plot(t,PR6)
%Utst = Ur3+Ur2+Ur1-E1;
% figure, plot(t,Utst)
IR3 = Ik(1,:);
UR3 = IR3*R3;
IR2 = Ik(1,:)-Ik(2,:);
UR2 = IR2*R2;
IR1 = Ik(1,:);
UR1 = IR1*R1;
Utst = UR3+UR2+UR1-E1;
figure,plot(t,Utst)
%% Pats spriegums ir ļoti mainīgs,attēlotājā grafikā ir redzems,kā svārstās spriegums
%% Jauda, kā redzams attēlā,ir diezgan līdzsvarota.