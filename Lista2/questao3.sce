clc;
clear;

Fs = 3;

da = 8;
dd = 8;
db = 12;

Aa = (%pi * da^2) / 4;
Ad = (%pi * dd^2) / 4;
Ab = (%pi * db^2) / 4;

Tr = 100 / Fs;

Fa = (Tr * Aa) * 2;
Fd = (Tr * Ad) * 2;
Fb = (Tr * Ab) * 2;

Pa = 20 * Fa / 18;
Pb = 40 * Fb / 38;
Pd = 40 * Fd / 38;
F = [Pa, Pb, Pd];

Fmax = min(F);

disp(F);
disp(Fmax);
