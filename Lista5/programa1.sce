clc;
clear;

P = 2; //N
E = 70000; //GPa
L = 300; //mm

b1 = 10; //mm
b2 = 1; //mm
h1 = 1; //mm
h2 = 5; //mm

A1 = b1 * h1;
A2 = b2 * h2;

y1 = h1/2;
y2 = h1 + (h2/2);

ybarr = ((A1 * y1) + (A2 * y2)) / (A1 + A2);

I1 = ((b1 * (h1^3))/12 + (A1 * ((y1 - ybarr)^2)));
I2 = ((b2 * (h2^3))/12 + (A2 * ((y2 - ybarr)^2)));
I = I1 + I2;
v = -(P * (L^3))/(3 * E * I);
disp(v);
