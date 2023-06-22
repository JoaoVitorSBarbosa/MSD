clear;
clc;

P = 1; //kN
a = 3; //m
b = 7; //m
L = a+b
R2 = (P * a)/(L);
R1 = P - R2;
Mmax = R1 * a;

subplot(2,1,1);
plot([0,0,a,a,L,L],[0,R1,R1,-R2,-R2,0],"g","LineWidth",4);
plot([0,L],[0,0],"b","LineWidth",4);

xlabel("Dist (m)");
ylabel("Esf Cort(kN)");
xgrid(1);

subplot(2,1,2);
plot([0,a,L,0],[0,Mmax,0,0], "g","LineWidth",4);
plot([0,L],[0,0],"b","LineWidth",4);
xlabel("Dist (m)");
ylabel("Mom Fletor(kN.m)");
xgrid(1);
