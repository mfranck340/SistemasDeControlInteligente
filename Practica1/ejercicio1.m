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
plotpc(net.IW{1,1}, net.b{1});
