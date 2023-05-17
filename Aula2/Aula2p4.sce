clc;
clear;

t = 0:0.01:10;

r = tan(t);
y = 100 * sin(t);
z = 100 * cos(t);
u = t^3;

subplot (2,2,1);
plot(t,r);

subplot (2,2,2);
plot(t,y);

subplot (2,2,3);
plot(t,z);

subplot (2,2,4);
plot(t,u);
