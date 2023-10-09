clear all;

% Ejercicio 6: Sistemas lineales
% 1. Expresar los sistemas de forma matricial

% Sistema 1
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

% Sistema 2
A2 = [0.110 0 1 0;
    0 3.260 0 1;
    0.425 0 1 0;
    0 3.574 0 1;
    0.739 0 1 0;
    0 3.888 0 1;
    1.054 0 1 0;
    0 4.202 0 1;
    1.368 0 1 0;
    0 4.516 0 1];

b2 = [317; 237; 319; 239; 321; 241; 323; 243; 325; 245];

% 2. a) Obtener el numero de condicion de la matriz A respecto a la inversion
inv_A = pinv(A);
disp('Numero de condicion de la matriz A respecto a la inversion:')
disp(cond(inv_A))

inv_A2 = pinv(A2);
disp('Numero de condicion de la matriz A2 respecto a la inversion:')
disp(cond(inv_A2))

% b) Resolver el sistema de ecuaciones
x = linsolve(A, b);     % Tambien se puede usar A\b
x2 = linsolve(A2, b2);

% c) Añadir ruido a la matriz b con un vector aleatorio de media 0 y desviacion 1
media = 0;
desviacion = 1;

b_r = b + (desviacion.*randn(10,1) + media);
x_r = linsolve(A, b_r);

b2_r = b2 + (desviacion.*randn(10,1) + media);
x2_r = linsolve(A2, b2_r);

% Resultados
fprintf('Sistema 1:\n')
disp('Resultado sin ruido:')
disp(x)
disp('Resultado con ruido:')
disp(x_r)

fprintf('\nSistema 2:\n')
disp('Resultado sin ruido:')
disp(x2)
disp('Resultado con ruido:')
disp(x2_r)
