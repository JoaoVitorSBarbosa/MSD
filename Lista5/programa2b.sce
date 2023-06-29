
clear;
clc;

P = 10; //kN
a = 500; //m
b = 7000; //m
L = 3 * a;

Rb = (P * a) + P(2*a);
Ra = (2*P) - Rb;

Mmaxa = Ra*a;
Mmaxb = Rb*a;

subplot(2,1,1);
plot([0,0,a,a,2*a,2*a,3*a,3*a],[0,Ra,Ra,0,0,Rb,Rb,0],"g","LineWidth",4);
plot([0,L],[0,0],"b","LineWidth",4);

xlabel("Dist (m)");
ylabel("Esf Cort(kN)");
xgrid(1);

subplot(2,1,2);
plot([0,a,2*a,L,0],[0,-Mmaxa+Mmaxb,-Mmaxa+Mmaxb,0,0], "g","LineWidth",4);
plot([0,L],[0,0],"b","LineWidth",4);
xlabel("Dist (m)");
ylabel("Mom Fletor(kN.m)");
xgrid(1);
