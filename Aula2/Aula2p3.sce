a =  input("a = ");
b =  input("b = ");
c =  input("c = ");

printf('O sistema %fx^2 %fx %f = 0 ', a,b,c);

function [delta] = calculaDelta(a,b,c)
    delta = (b^2) - 4 * a * c;
endfunction

[delta] = calculaDelta(a,b,c);

//x1 = 0;
//x2 = 0;
if (delta == 0)
    x1 = (-b + sqrt(delta))/(2*a);
    x2 = x1;
    printf('tem soluçoes: \n');
    printf('x1 = %f \n', x1);
    printf('x2 = %f \n', x2);
elseif (delta > 0)
    printf('tem soluçoes: \n');
    x1 = (-b + sqrt(delta) )/(2*a);
    x2 = (-b - sqrt(delta) )/(2*a);
    printf('x1 = %f \n', x1);
    printf('x2 = %f \n', x2);
else 
    x1 = 0;
    x2 = 0;
    printf('não tem solução no dominio dos numeros reais \n');
end

