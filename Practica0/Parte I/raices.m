% Funcion que permite obtener las raices de un producto de polinomios
% y las clasifica en reales y complejas

function [solucion, reales, complejas] = raices(poli_1, poli_2)

    opt = input("A quien se aplica la solucion? \npoli_1 = 1 \npoli_2 = 2 \nprod_poli = 3 \nSeleccion: ");
    
    switch opt
        case 1
            poli = poli_1;
        case 2
            poli = poli_2;
        case 3
            poli = conv(poli_1, poli_2);
        otherwise
            error('Opcion no valida')
    end

    solucion = roots(poli);

    reales = 0;
    complejas = 0;

    for i = 1:length(solucion)
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
    grid on

end
