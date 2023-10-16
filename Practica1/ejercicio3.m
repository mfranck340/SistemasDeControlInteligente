% Carga de datos de ejemplo disponibles en la toolbox
[inputs,targets] = simplefit_dataset;
%[inputs,targets] = bodyfat_dataset;

% Creación de la red
hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize);
%net = fitnet(hiddenLayerSize, 'trainrp');
%net = fitnet(hiddenLayerSize, 'trainlm');
%net = fitnet(hiddenLayerSize, 'traingd');
%net = fitnet(hiddenLayerSize, 'trainbr');

% División del conjunto de datos para entrenamiento, validación y test
net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 10/100;

% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);

% Prueba
outputs = net(inputs);
errors = gsubtract(outputs,targets);
performance = perform(net,targets,outputs);

% Visualización de la red
view(net);
