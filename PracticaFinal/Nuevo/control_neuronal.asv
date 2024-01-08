% Obtencion datos de entrenamiento
inputs = training_data(:, [2, 5, 7, 8, 9, 10, 11, 12]);
outputs = training_data(: , [18]);
inputs(isinf(inputs)) = 5.0;
inputs = double(inputs);
outputs = double(outputs);


% Entrenamiento de red
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);


% Generar bloque simulink
gensim(net,Ts)
