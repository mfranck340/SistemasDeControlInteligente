clear all;

% Ejercicio 1: Matrices y vectores
% 1. Crear matriz A y vector v
A = [1 2; 3 4; 5 6; 7 8];
v = [14; 16; 18; 20];
disp("1. Crear matriz A y vector v");
disp("A = ");
disp(A);
disp("v = ");
disp(v);

% 2. Conctenar A y v
B = [A v];
disp("2. Concatenación de A y v en la matriz B");
disp("B = ");
disp(B);

% 3. Vector fila formado por las filas de B
C = [B(1,:) B(2,:) B(3,:) B(4,:)];
disp("3. Concatenacición de las filas de B");
disp("C = ");
disp(C)

% 4. Vector columna resultado de concatenar las columnas de la matriz B
D = [B(:,1); B(:,2); B(:,3)];
disp("4. Concatenación de las columnas de B");
disp("D = ");
disp(D);
