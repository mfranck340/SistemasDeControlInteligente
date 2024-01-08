%{
%%
load("variables.mat")

%% Obtencion datos de entrenamiento
inputs = [inputs, entradas.data'];
outputs = [outputs, salidas.data'];

%%
inputs(isinf(inputs)) = 5.0;
inputs = double(inputs);
outputs = double(outputs);
%}
%%
net = feedforwardnet([10, 5]);

%% Entrenamiento de red
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

%% Generar bloque simulink
gensim(net, 0.1)

%%
%save("variables.mat", "inputs", "outputs")