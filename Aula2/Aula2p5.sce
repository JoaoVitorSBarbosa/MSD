clear;
clc;

[t,y] = meshgrid(-4:1:5,-4:1:4);
z = sin(t)+ tan(y);

mesh(t,y,z);
