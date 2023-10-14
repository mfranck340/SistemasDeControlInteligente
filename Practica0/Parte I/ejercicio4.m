clear all;

% Ejercicio 4: Tiempo de computo y representacion grafica
% calcular cuanto tarda en ejecutarse la funcion determinante

time_det = zeros(1, 25);
time_rnk = zeros(1, 25);

for i = 1:25
    A = rand(i);        % Se crea la matriz aleatoria de tamaño i (0 - 25)

    tic
    det(A);
    time_det(i) = toc;  % Se obtiene el tiempo que tarda en calcularse el deteminante

    tic
    rank(A);
    time_rnk(i) = toc;  % Se obtiene el tiempo que tarda en calcularse el rango
end

% Representacion grafica
plot(time_det)
hold on
plot(time_rnk, ':')
title("Tiempo de computo determinante y rango")
ylabel("Tiempo de computo")
xlabel("Tamaño de la matriz")
legend("DET","RANK")
hold off
