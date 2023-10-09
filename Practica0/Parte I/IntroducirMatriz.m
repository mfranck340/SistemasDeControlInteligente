% Funcion que rellena una matriz pasadas unas dimensiones

function Matriz = IntroducirMatriz(Dimensiones)
    opt = input('Para rellenar de forma aleatoria introduzca r: ');
    
    if strcmp(opt, 'r')
        Matriz = rand(Dimensiones);
    else

        if length(Dimensiones) == 1
            Dimensiones = [Dimensiones,Dimensiones];
        end

        Matriz = zeros(Dimensiones);
        filas = Dimensiones(1);
        columnas = Dimensiones(2);

        for i=1:filas
            for j=1:columnas
                Matriz(i,j) = input(sprintf('Introduce un valor pos[%d, %d]: ', i, j));
            end
        end
    end

end
