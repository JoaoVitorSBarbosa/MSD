clc;
clear;

Eab = 210000;
A = 50;
Delta = [0:0.001:0.014];
L = 200;

P = (Delta*25*A*Eab)./(L*38);

plot(Delta,P,"r.-");
xlabel("Delta L (mm)");
ylabel("P (N)");
title("Variação de P x Delta L");
xgrid();
