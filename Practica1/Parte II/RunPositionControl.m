% Ejercicio 1 apartado b)

% Tiempo de muestreo
Ts = 100e-3;

% Referencia x-y de posicion
refx = -100;
refy = 3;

% Ejecutar simulacion
sim('PositionControl.slx');

%% Apartado d) Mostrar trayectoria del robot

% Mostrar
x = salida_x.data;
y = salida_y.data;
figure;
plot(x, y);
grid on;
hold on;

%% Apartado e)

Ts = 100e-3;

% Generar N posiciones aleatorias, simular y guardar en variables
N = 30;
E_d_vec = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];

% Realizamos 30 simulaciones
for i = 1:N
    % Generamos los valores de entrada aleatorios
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    sim('PositionControl.slx')

    E_d_vec = [E_d_vec;E_d.data];
    E_theta_vec = [E_theta_vec;E_theta.data];
    V_vec = [V_vec; V.data];
    W_vec = [W_vec; W.data];
end

inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

%% Apartado f)

% Entrenar red neuronal
net = feedforwardnet([11]);
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

%% Apartado g)

% Generar bloque de Simulink con el controlador neuronal
gensim(net,Ts)

