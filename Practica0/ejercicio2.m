clear all;

% Ejercicio 2: Matrices y vectores
% 1. Crear matriz cuadrada aleatoria
n = input('Indique el tamaño de la matriz: ');
A = rand(n);

% 2. Con la matriz anterior
% a. Mostrar la matriz
disp('Matriz A: ');
disp(A);

% b. En una segunda matriz mostrar las columnas impares
B = A(:, 1:2:end);
disp(B);

% c. Valor de los elementos de la diagonal principal
d = diag(A);
disp(d);

% d. Valor max, min, mean, var de cada fila de A
max = max(A, [], 2);
min = min(A, [], 2);
mean = mean(A, 2);
var = var(A, 0, 2);

% Representacion grafica de los valores
t = tiledlayout(2,2);
title(t,"Valores por fila")

nexttile
plot(max)
title("Maximos")
xlabel("Nº FILA")
ylabel("VALORES")

nexttile
plot(min)
title("Minimos")
xlabel("Nº FILA")
ylabel("VALORES")

nexttile
plot(mean)
title("Medios")
xlabel("Nº FILA")
ylabel("VALORES")

nexttile
plot(var)
title("Varianzas")
xlabel("Nº FILA")
ylabel("VALORES")
