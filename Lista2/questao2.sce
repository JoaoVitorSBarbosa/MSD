clc;
clear;

Ta = 40:1:60;
P = 2200;
Fd = 15 * P / 35; 
Fc = P + Fd;
Fa = Fc; 
Aa = Fa ./ (Ta * 2);
Ac = Fc ./ Ta;
Ad = Fd ./ Ta;

da = sqrt(4 * Aa / %pi);
dc = sqrt(4 * Ac / %pi);
dd = sqrt(4 * Ad / %pi);

plot(da,Ta,"r*",dc,Ta,"g+",dd,Ta,"bo");
title("Tensão utilma x Diâmetros")
xgrid(1);
ylabel("Tensão Ultima, (MPa)");
xlabel("Diâmetro (mm)")
legend('da','dc','dd');
