% Ejercicio 2: Aproximacion de funciones

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APROXIMACION DE FUNCIONES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all;

% DEFINICION DE LOS VECTORES DE ENTRADA-SALIDA
% ============================================

t = -3:.1:3;                        % eje de tiempo
F = sinc(t) + .001*randn(size(t));  % funcion que se desea aproximar

% DISENO DE LA RED
% ==================
% Funciones de entrenamiento: [trainrp, trainlm, traingd, trainbr]

hiddenLayerSize = 15;                        % Numero de neuronas en la capa oculta    
net = fitnet(hiddenLayerSize,'trainrp');    % Red neuronal
%net = fitnet(hiddenLayerSize, 'trainlm');
%net = fitnet(hiddenLayerSize, 'traingd');
%net = fitnet(hiddenLayerSize, 'trainbr');

% Division de los datos
net.divideParam.trainRatio = 70/100;    % Porcentaje de datos de entrenamiento
net.divideParam.valRatio = 15/100;      % Porcentaje de datos de validación
net.divideParam.testRatio = 15/100;     % Porcentaje de datos de test

% Entrenamiento de la red
net = train(net,t,F);

% Prueba de la red
Y = net(t);

% Graficas
plot(t,F,'+'); hold on;
plot(t,Y,'-r'); hold off;
title('Vectores de entrenamiento');
xlabel('Vector de entrada P');
ylabel('Vector Target T');
