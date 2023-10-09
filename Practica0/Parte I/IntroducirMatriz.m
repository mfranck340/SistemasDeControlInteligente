% Funcion que rellena una matriz pasadas unas dimensiones

% Entradas:
%   Dimensiones: Vector con las dimensiones de la matriz

% Salidas:
%   Matriz: Matriz rellena

function Matriz = IntroducirMatriz(Dimensiones)
    opt = input('Para rellenar de forma aleatoria introduzca r: ');
    
    % Si se introduce r se rellena de forma aleatoria
    if strcmp(opt, 'r')
        Matriz = rand(Dimensiones);                 
    else
        % Si se introduce un vector de una dimension
        if length(Dimensiones) == 1
            Dimensiones = [Dimensiones,Dimensiones];    % Se convierte en una matriz cuadrada
        end

        Matriz = zeros(Dimensiones);                    % Se crea una matriz de ceros
        filas = Dimensiones(1);                         % Se obtienen las filas
        columnas = Dimensiones(2);                      % Se obtienen las columnas

        % Se rellena la matriz
        for i=1:filas
            for j=1:columnas
                % Se pide el valor de la posicion
                Matriz(i,j) = input(sprintf('Introduce un valor pos[%d, %d]: ', i, j));
            end
        end
    end
end
