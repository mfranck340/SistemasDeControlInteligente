% Funcion que permite obtener las raices de un producto de polinomios
% y las clasifica en reales y complejas

% Entradas: 
%   poli_1 = primer polinomio
%   poli_2 = segundo polinomio

% Salidas:
%   solucion = raices del producto de polinomios
%   reales = numero de raices reales
%   complejas = numero de raices complejas

function [solucion, reales, complejas] = raices(poli_1, poli_2)

    % Solitamos al usuario a que polinomio se le aplicara la solucion
    opt = input("A quien se aplica la solucion? \npoli_1 = 1 \npoli_2 = 2 \nprod_poli = 3 \nSeleccion: ");
    
    % Dependiendo de la opcion se selecciona el polinomio
    switch opt
        case 1
            poli = poli_1;
        case 2
            poli = poli_2;
        case 3
            poli = conv(poli_1, poli_2);
        otherwise
            % Si la opcion no es valida se muestra un error
            error('Opcion no valida')
    end

    % Obtenemos las raices del polinomio
    solucion = roots(poli);

    % Declaramos los contadores de raices reales y complejas
    reales = 0;
    complejas = 0;

    % Contamos las raices reales y complejas
    for i = 1:length(solucion)
        % Si la raiz es real se suma 1 a reales
        if isreal(solucion(i))
            reales = reales + 1;
        else
            complejas = complejas + 1;
        end
    end

    % Grafica de las raices en un plano complejo
    figure
    plot(real(solucion), imag(solucion), 'o')
    title('Raices en el plano complejo')
    xlabel('Eje real')
    ylabel('Eje imaginario')
    grid on     % Anadimos una cuadricula al grafico

end
