close all
clear all
clc

% Ejercicio 1: Transformadas de señales

% 1. Obtenga la transformada Z de la siguiente funcion
syms k a

f = 2 + 5*k +k^2;
fTrans = ztrans(f);

% representacion grafica de la funcion y su transformada
h1 = figure('Name','FUNCION Y TRANSFORMADA','NumberTitle','off');
hold on
subplot(2,1,1)
fplot(f)
subplot(2,1,2)
fplot(fTrans)

% 2. Obtenga la transformada Z de la siguiente funcion
f = sin(k) * exp(-a*k);
fTrans = ztrans(f);

% Para poder dibujarla solo tiene que haber una variable
%{
h2 = figure('Name','FUNCION Y TRANSFORMADA','NumberTitle','off');
hold on
subplot(2,1,1)
fplot(f)
subplot(2,1,2)
fplot(fTrans)
%}


% 3. Con la siguiente funcion de transferencia
T = tf([0.4 0 0], [1 -1 0.1 0.02], 0.01);

h3 = figure('Name','FUNCION DE TRANSFERENCIA','NumberTitle','off');
hold on
% Obtenga la respuesta al impulso
subplot(2,1,1)
impulse(T)
% Obtenga la respuesta al escalon
subplot(2,1,2)
step(T)
