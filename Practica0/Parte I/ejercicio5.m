clear all;

% Ejercicio 5: Representacion grafica en 3D

[X, Y] = meshgrid(-5: 0.1: 5);
Z = Y * sin(pi * (X/10)) + 5 * cos((X^2 + Y^2)/8) + cos(X + Y) * cos(3*X -  Y);

% Representacion grafica
figure('Name','Representacion grafica','NumberTitle','off');
hold on

% Dibujar superficie
subplot(2,1,1)
surf(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('z')
title('Surperficie')

% Dibujar malla 
subplot(2,2,3)
mesh(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('z')
title('Malla')

% Dibujar contorno
subplot(2,2,4)
contourf(X,Y,Z)
colorbar % Mostrar barra de colores
xlabel('x')
ylabel('y')
title('Contorno')
hold off
