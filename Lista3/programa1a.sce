clc;
clear;

T = [4.5:0.1:5.5];
R = 75/2;
J = (%pi / 2) * (R^4);
tq = ((T * 1000000) * R) ./ J;

plot(T,tq);
title("Torque x Tensão de Cisalhamento")
xgrid(1);
ylabel("Tensão de Cisalhamento (MPa)");
xlabel("Torque (KNm) ");
