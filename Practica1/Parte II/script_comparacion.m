% Ejercicio 1. Apartado i)

% Datos de inicializacion
Ts = 100e-3;
refx = 123.12;
refy = 84.32;


% Simulacion normal
sim('PositionControl.slx');
t1 = salida_x.time;
sx1 = salida_x.data;
sy1 = salida_y.data;

% Simulacion red neuronal
sim('PositionControlNet.slx');
t2 = salida_x.time;
sx2 = salida_x.data;
sy2 = salida_y.data;


% Mostrar resultado
figure(),
subplot(2,2,1), plot(sx1, sy1); title("Normal");
grid on;
subplot(2,2,2), plot(sx2, sy2); title("Red neuronal");
grid on;

if (length(t1) < length(t2))
    sx2 = sx2(1:length(t1));
    sy2 = sy2(1:length(t1));
end

distancia = sqrt((sx1 - sx2).^2 + (sy1 - sy2).^2);

subplot(2,1,2),
bar(t1, distancia);
title("Diferencia");
xlabel("Tiempo")
ylabel("Valor")
