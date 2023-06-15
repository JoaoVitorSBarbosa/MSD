clc;
clear;

P = 20000;
M = P * 380;

ybar = 7.5 * 10;

h1 = 5 * 10;
h2 = 5 * 10;
h3 = 5 * 10;

H = 150;

b1 = 5 * 10;
b2 = 15 * 10;
b3 = 5 * 10;

A1 = b1 * h1;
A2 = b2 * h2;
A3 = b3 * h3;

y1 = h1/2;
y2 = (h1 + h2)/2;
y3 = (h1 + h2 + h3)/2;

I1 = (b1 * (h1^3) /12) + (A1 * ((ybar - y1)^2));
I2 = (b2 * (h2^3) /12) + (A2 * ((ybar - y2)^2));
I3 = (b3 * (h3^3) /12) + (A3 * ((ybar - y3)^2));

I = I1 + I2 + I3;
y = ybar;
u = M;
sig = (u * y) / I;
plot([-sig,sig,0,0],[0,H,H,0]);
xlabel("Tensões (MPa)");
ylabel("Área (mm)")
xgrid(1);
