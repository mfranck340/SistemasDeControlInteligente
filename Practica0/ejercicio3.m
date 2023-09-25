clear all;

% Ejercicio 3: Matrices y vectores
% 1. Solicitar al usuario las dimensiones de una matriz en formato [m n]
dimensiones = input('Ingrese las dimensiones de la matriz en formato [m n]: ');

esCuadrada = length(dimensiones) == 1;

A = IntroducirMatriz(dimensiones);
B = IntroducirMatriz(dimensiones);

% 4. Mostrar por pantalla
% Las matrices generadas
disp('Matriz A:')
disp(A)
disp('Matriz B:')
disp(B)

% Transpuesta e inversa de cada matriz
disp('Transpuesta de A:')
disp(A')
disp('Transpuesta de B:')
disp(B')

if esCuadrada
  disp('Inversa de A:')
  disp(inv(A))
  disp('Inversa de B:')
  disp(inv(B))
else
    disp('No se puede calcular la inversa de una matriz no cuadrada')
end

% Determinante y rango de cada matriz
if esCuadrada
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
%disp('Producto matricial A*B:')
%disp(A*B)

disp('Producto elemento a elemento A.*B:')
disp(A.*B)

% Vector fila con la primera fila de ambas matrices
disp('Vector fila:')
disp([A(1,:) B(1,:)])

% Vector columna con la primera columna de ambas matrices
disp('Vector columna:')
disp([A(:,1); B(:,1)])
