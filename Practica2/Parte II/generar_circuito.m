% Apartado d)
%Tiempo de muestreo
Ts = 100e-3;

% Referencia x-y de posicion
% Posicion objetivo
refx = 5;
refy = 5;
% Posicion del obstaculo
obsx = 2.5;
obsy = 2.5;

% Ejecutar Simulacion
sim('EvitarObstaculo.slx')

% Mostrar trayectoria
x=salida_x.data;
y=salida_y.data;
figure;
plot(x,y);
grid on;
hold on;
plot(obsx, obsy, 'x');
title('Trayectoria del robot');
legend('Trayectoria', 'Obstaculo');
