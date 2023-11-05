% Ejercicio 4: Clasificacion

% Carga de datos de ejemplo disponibles en la toolbox
%[inputs,targets] = simpleclass_dataset;
[inputs,targets] = cancer_dataset;

% Creción de una red neuronal para el reconocimiento de patrones
hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize, 'trainrp');
%net = fitnet(hiddenLayerSize, 'trainbfg');
%net = fitnet(hiddenLayerSize, 'traingdm');
%net = fitnet(hiddenLayerSize, 'trainscg');

% División del conjunto de datos para entrenamiento, validación y test
net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 10/100;

% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);

% Prueba
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);

% Visualización
view(net);
