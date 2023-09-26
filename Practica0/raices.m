% Funcion que permite obtener las raices de un producto de polinomios
% y las clasifica en reales y complejas

function [solucion, reales, complejas] = raices(poli_1, poli_2)

    opt = input("A quien se aplica la solucion? (poli_1, poli_2, prod_poli");
    
    if strcat(opt, 'poli_1')
        a = 0
    elseif strcat(opt, 'poli_2')
        a = 1
    elseif strcat(opt, 'prod_poli')
        a = 2
    else
        disp("Opcion no valida")
    end

end