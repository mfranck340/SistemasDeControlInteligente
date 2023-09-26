clear all;

% Ejercicio 6: Sistemas lineales
% 1. Expresar los sistemas de forma matricial
A = [0 2 10 7;
    2 7 7 1;
    1 9 0 5;
    4 0 0 6;
    2 8 4 1;
    10 5 0 3;
    2 6 4 0;
    1 1 9 3;
    6 4 8 2;
    0 3 0 9];

b = [90; 59; 15; 10; 80; 17; 93; 51; 41; 76];

% 2. a) Obtener el numero de condicion de la matriz A
inv_A = pinv(A);
disp(cond(inv_A))

% b) Resolver el sistema de ecuaciones
x = linsolve(A, b);     % Tambien se puede usar A\b

% c) Añadir ruido a la matriz b 
b_r = b + randn(10,1);
x_r = linsolve(A, b_r);

% Resultados
disp(x) 
disp(x_r)
