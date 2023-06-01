clear;
clc;

d_a = [20:40];
A_a = (%pi * d_a^2)/4;

D_ab = 150;
D_bc = 600;
D_ac = D_ab + D_bc;

P = 800;

F_ay = P*D_bc/D_ab;

o = atan(400/300);

F_a = F_ay/sin(o);

T_s = F_a./A_a;

plot(d_a,T_s);
xgrid();
xlabel("Diâmetro em A (mm)");
ylabel("Tensão em A (MPa)");
