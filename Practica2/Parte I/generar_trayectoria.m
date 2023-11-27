%Tiempo de muestreo
Ts = 100e-3;
% Referencia x-y de posicion
refx = 10*rand-5;
refy = 10*rand-5;

% Ejecutar Simulacion
sim('PositionControl.slx')

% Mostrar
x = salida_x.Data;
y = salida_y.Data;
figure;
plot(x,y);
grid on;
hold on
