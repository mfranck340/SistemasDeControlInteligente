% Apartado d)
%Tiempo de muestreo
Ts = 100e-3;

% Referencia x-y de posicion
% Posicion objetivo
refx = 5;
refy = 0;
% Posicion del obstaculo
obsx = 1.2;
obsy = 0;

% Ejecutar Simulacion
sim('PositionControl.slx')
x = salida_x.data;
y = salida_y.data;

sim('EvitarObstaculo.slx')
x_obs = salida_x.data;
y_obs = salida_y.data;

% Mostrar trayectoria
figure;
subplot(1,2,1);
plot(x,y);
grid on;
title('Trayectoria sin obstaculo');

subplot(1,2,2);
plot(x_obs,y_obs);
grid on;
hold on;
plot(obsx, obsy, 'x');
title('Trayectoria con obstaculo');
legend('Trayectoria', 'Obstaculo');

%%
% Apartado e)
% Tiempo de muestreo
Ts = 100e-3;

% Inicio de la trayectoria
x_0 = 0.015;
y_0 = 0;
th_0 = 0;

% Posicion del obstaculo
obsx = 2.02;
obsy = 0.98;

% Ejecutar Simulacion


sim('EvitarObstaculoTrajectory.slx')
x_obs = salida_x.data;
y_obs = salida_y.data;
x = ruta_x.data;
y = ruta_y.data;

% Mostrar trayectoria
figure;
plot(x,y);
grid on;
hold on;
plot(x_obs,y_obs);
plot(obsx, obsy, 'kx');
title('Trayectoria con obstaculo');
legend("ruta", "robot", "obs");
