clc;
clear;

R = 75/2
tal = [45:55]; //MPa
r = 55/2;
J2 = (%pi/2) * (R^4 - r^4);
T2 = (tal * J2) ./R;


plot(tal,T2);
title("Torque (Nmm) x Tensão de Cisalhamento (MPa)")
xgrid(1);
ylabel("Tensão de Cisalhamento (MPa)");
xlabel("Torque (Nmm) ");
