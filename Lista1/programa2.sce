clear;
clc;

Tu = 1:0.5:20;
Fs = 2.5;
Ta = Tu./Fs;

Fc = (20 * 250)/400;
Fc = Fc * 1000;

Ac = (Fc./(2*Ta));
plot(Tu,Ac,"r");
title("Tensão utilma x Áreas")
xgrid(1);
xlabel("Tensão Ultima, (MPa)");
ylabel("Seção Transversal (mm2)")
legend('a1');
 
