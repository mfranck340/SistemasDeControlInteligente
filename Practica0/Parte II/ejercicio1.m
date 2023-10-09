close all
clear all
clc

% Ejercicio 1: Transformadas de señales

% 1. Obtenga la transformada Z de la siguiente funcion
syms k a

f = 2 + 5*k +k^2;
fTrans = ztrans(f);

fprintf('\nTransformada Z de la funcion 1: \n%s\n', fTrans)

% representacion grafica de la funcion y su transformada
h1 = figure('Name','FUNCION Y TRANSFORMADA', 'NumberTitle','off');
title('FUNCION Y TRANSFORMADA')
hold on
subplot(3,2,1)
fplot(f)
title('Función 1')
xlabel('valor k')

subplot(3,2,2)
fplot(fTrans)
title('Transformada 1')
xlabel('valor k')

% 2. Obtenga la transformada Z de la siguiente funcion
f = sin(k) * exp(-a*k);
fTrans = ztrans(f);

fprintf('\nTransformada Z de la funcion 2: \n%s\n', fTrans)

% Sustitucion del valor a
f = subs(f, a, 1);
fTrans = subs(fTrans, a, 1);

subplot(3,2,3)
fplot(f)
title('Función 2')
xlabel('valor k')

subplot(3,2,4)
fplot(fTrans)
title('Transformada 2')
xlabel('valor k')

% 3. Con la siguiente funcion de transferencia
T = tf([0.4 0 0], [1 -1 0.1 0.02], 0.01);

% Obtenga la respuesta al impulso
subplot(3,2,5)
impulse(T)
% Obtenga la respuesta al escalon
subplot(3,2,6)
step(T)
