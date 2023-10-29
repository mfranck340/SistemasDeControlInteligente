close all, clear all
% Ejercicio 1. Apartado i)

% Datos de inicializacion
Ts = 100e-3;
refx = -4.0717
refy = -0.2401


% Mostrar resultado
figure(1),
title('Comparacion');
grid on;
hold on;

% Simulacion normal
sim('PositionControl.slx');
plot(salida_x.data, salida_y.data);

% Simulacion red neuronal
sim('PositionControlNet.slx');
plot(salida_x.data, salida_y.data);

legend('Normal', 'Red neuronal')
