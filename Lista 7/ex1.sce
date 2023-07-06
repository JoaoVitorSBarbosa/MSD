clc;
clear;

Txa = 50; //MPa
Tya = -10; //MPa
Txya = 40; //MPa
Tna = ((Txa+Tya) / 2);
Ra = sqrt((((Txa-Tya) / 2))^2 + (Txya)^2);
T1a = Tna + Ra;
T2a = Tna - Ra;
Tea = 300; //MPa
Vma = (T1a)^2 - (T1a * T2a) + (T2a) ^ 2;

Txb = 150; //MPa
Tyb = 30; //MPa
Txyb = -80; //MPa
Tnb = (Txb+Tyb) / 2;
Rb = sqrt(((((Txb-Tyb) / 2))^2) + ((Txyb)^2));
T1b = Tnb + Rb;
T2b = Tnb - Rb;
Teb = 197; //MPa
Vmb = ((T1b)^2) - (T1b * T2b) + ((T2b) ^ 2);

Txc = -40; //MPa
Tyc = 80; //MPa
Txyc = 25; //MPa
Tnc = (Txc+Tyc) / 2;
Rc = sqrt((((Txc-Tyc) / 2))^2 + (Txyc)^2);
T1c = Tnc + Rc;
T2c = Tnc - Rc;
Tec = 100; //MPa
Vmc = (T1c)^2 - (T1c * T2c) + (T2c) ^ 2;

disp("Para A");
if(abs(T1a - T2a) <= Tea)
    disp("Tresca: NÃO ocorre falha");
else
    disp("Tresca: Ocorre falha");
end

if(Vma <= (Tea)^2)
    disp("VM: NÃO ocorre falha");
else
    disp("VM: Ocorre falha");
end

disp("Para B");
if(abs(T1b - T2b) <= Teb)
    disp("Tresca: NÃO ocorre falha");
else
    disp("Tresca: Ocorre falha");
end

if(Vmb <= ((Teb)^2))
    disp("VM: NÃO ocorre falha");
else
    disp("VM: Ocorre falha");
end

disp("Para C");
if(abs(T1c - T2c) <= Tec)
    disp("Tresca: NÃO ocorre falha");
else
    disp("Tresca: Ocorre falha");
end

if(Vmc <= (Tec)^2)
    disp("VM: NÃO ocorre falha");
else
    disp("VM: Ocorre falha");
end

