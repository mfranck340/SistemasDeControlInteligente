clear all;
close all;

% Matriz de entradas
P = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5;
        1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3];

% Target
T = [1 1 1 0 0 1 1 1 0 0;
     0 0 0 0 0 1 1 1 1 1];

% Perceptron
net = perceptron;
net = train(net, P, T);
view(net);

% Muestra de resultados
plotpv(P, T);
plotpc(net.iw{1,1}, net.b{1});


%% INCORPORAMOS AL CONJUNTO UN NUEVO DATO: [0.0 -1.5] de la clase 3
% Matriz de entradas
P2 = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5 0.0;
        1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3 -1.5];

% Target
T2 = [1 1 1 0 0 1 1 1 0 0 1;
     0 0 0 0 0 1 1 1 1 1 1];

% Perceptron
net2 = perceptron;
net2 = train(net2, P2, T2);
view(net2);

% Muestra de resultados
plotpv(P2, T2);
plotpc(net2.iw{1,1}, net2.b{1});
