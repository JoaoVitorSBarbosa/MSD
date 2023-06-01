clc;
clear;

d = [46,50,54]; //mm
R = d/2;
TNm = [400,1200,2400]; //Nm
TNmm = TNm * 1000; //Nmm

tal1 = (2*TNmm(1)) / (%pi * R(1)^3);
printf("tbc = %0.2fMpa\n",tal1);

tal2 = (2*TNmm(2)) / (%pi * R(2)^3);
printf("tcd = %0.2fMpa\n",tal2);

tal3 = (2*TNmm(3)) / (%pi * R(3)^3);
printf("tde = %0.2fMpa\n",tal3);

nR = ((2*TNmm(1))/ (tal3 * %pi)) ^ (1/3);
nd = 2 * nR; 

printf("d = %0.2fmm\n",nd);
