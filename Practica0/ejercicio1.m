clear all;

% Ejercicio 1: Matrices y vectores
% 1. Crear matriz A y vector v
A = [1 2; 3 4; 5 6; 7 8];
v = [14 16 18 20];

% 2. Conctenar A y v
B = [A v'];

% 3. Vector fila formado por las filas de B
C = [B(1,:) B(2,:) B(3,:) B(4,:)];
disp(C)

% 4. Vector columna resultado de concatenar las columnas de la matriz B
D = [B(:,1); B(:,2); B(:,3)];
disp(D)
