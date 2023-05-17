clear;
clc;

Tu = 30:0.1:50;
Fs = 1.2;
Ta = Tu/Fs;

F1 = (250 - 60) * 1000;
F2 = 60 * 1000;  

a1 = F1 ./Ta;
a2 = F2 ./Ta; 

d1 = sqrt((4*a1)/(%pi));
d2 = sqrt((4*a2)/(%pi));

plot(Tu,d1,"r",Tu,d2,"g");
title("Tensão utilma x Diâmetros")
xgrid(1);
xlabel("Tensão Ultima, (MPa)");
ylabel("Diâmetro (mm)")
legend('d1','d2');
