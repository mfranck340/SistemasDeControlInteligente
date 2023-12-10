% Apartado C
% Tiempo de muestreo
Ts = 100e-3;

figure;
for i = 1:4
    % Referencia x-y de posicion
    refx = 10*rand-5;
    refy = 10*rand-5;
    
    % Ejecutar Simulacion
    sim('EvitarObstaculo.slx')
    
    % Mostrar trayectoria
    x = salida_x.Data;
    y = salida_y.Data;
    
    subplot(2,2,i),plot(x,y);
    grid on;
    hold on
end

%% 

x_0 = 0.02;
y_0 = 0;
th_0 = 0;


refx = 1.3236;
refy = -4.0246;