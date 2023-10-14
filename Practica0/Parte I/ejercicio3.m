clear all;

% Ejercicio 3: Matrices y vectores
% 1. Solicitar al usuario las dimensiones de una matriz en formato [m n]
dimensiones = input('Ingrese las dimensiones de la matriz en formato [m n]: ');

esCuadrada = length(dimensiones) == 1;  % Se guarda si las matrices son cuadradas para saber si realizar algunos cálculos

A = IntroducirMatriz(dimensiones);      % Se obtiene la matriz A
B = IntroducirMatriz(dimensiones);      % Se obtiene la matriz B

% 4. Mostrar por pantalla las matrices generadas
fprintf('\nMatrices generadas\n')
disp('Matriz A:')
disp(A)
disp('Matriz B:')
disp(B)

% Traspuesta e inversa de cada matriz
fprintf('\nTraspuesta e inversa de cada matriz\n')
disp('Traspuesta de A:')
disp(A')
disp('Traspuesta de B:')
disp(B')

tolerancia = 1e-10; % Define una tolerancia para el cálculo del determinante que no da exactamente 0

if esCuadrada       % Solo se calcula la inversa si son matrices cuadradas
  disp('Inversa de A:')
  if abs(det(A)) < tolerancia
    disp('No se puede calcular la inversa de una matriz singular')
  else
    disp(inv(A))
  end
  
  disp('Inversa de B:')
  if abs(det(B)) < tolerancia
    disp('No se puede calcular la inversa de una matriz singular')
  else
    disp(inv(B))
  end
else
  disp('No se puede calcular la inversa de una matriz no cuadrada')
end

% Determinante y rango de cada matriz
fprintf('\nDeterminante y rango de cada matriz\n')
if esCuadrada       % Solo se calcula el determinante si son matrices cuadradas
  disp('Determinante de A:')
  disp(det(A))
  disp('Determinante de B:')
  disp(det(B))
else
  disp('No se puede calcular el determinante de una matriz no cuadrada')
end

disp('Rango de A:')
disp(rank(A))
disp('Rango de B:')
disp(rank(B))

% Producto matricial y elemento a elemento
fprintf('\nProducto matricial y elemento a elemento\n')
if esCuadrada       % Solo se calcula el producto matricial si son matrices cuadradas
  disp('Producto matricial A*B:')
  disp(A*B)
else
  disp('No se puede calcular el producto matricial de una matriz no cuadrada')
end

disp('Producto elemento a elemento A.*B:')
disp(A.*B)

% Vector fila con la primera fila de ambas matrices
fprintf('\nVector fila con la primera fila de ambas matrices\n')
disp([A(1,:) B(1,:)])

% Vector columna con la primera columna de ambas matrices
fprintf('\nVector columna con la primera columna de ambas matrices\n')
disp([A(:,1); B(:,1)])
