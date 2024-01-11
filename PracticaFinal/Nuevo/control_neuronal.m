%% Cargar datos para entrenamiento
load("variables2.mat")

%% Inicializar datos de entrenamiento
inputs = [];
outputs = [];

%% Obtencion datos de entrenamiento
inputs = [inputs, entradas.data'];
outputs = [outputs, salidas.data'];

%% Limpiar datos
inputs(isinf(inputs)) = 5.0;
inputs = double(inputs);
outputs = double(outputs);

%% Generar red
net = feedforwardnet([13 18 18]);

%% Entrenamiento de red
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

%% Generar bloque simulink
gensim(net, 0.1)

%% Almacenar datos
save("variables2.mat", "inputs", "outputs")