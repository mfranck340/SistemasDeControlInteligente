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

% 2. a) Obtener el numero de condicion de la matriz A respecto a la inversion
inv_A = pinv(A);
disp('Numero de condicion de la matriz A respecto a la inversion:')
disp(cond(inv_A))

% b) Resolver el sistema de ecuaciones
x = linsolve(A, b);     % Tambien se puede usar A\b

% c) Añadir ruido a la matriz b con un vector aleatorio de media 0 y desviacion 1
media = 0;
desviacion = 1;
b_r = b + (desviacion.*randn(10,1) + media);
x_r = linsolve(A, b_r);

% Resultados
disp('Resultado sin ruido:')
disp(x)
disp('Resultado con ruido:')
disp(x_r)
