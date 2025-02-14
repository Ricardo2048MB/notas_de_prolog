llenar_lista(Lista):-
    writeln('Escribe un dato (escriba "fin." para terminar de llenar esta lista)'),
    read(Dato),
    (
        Dato = fin -> Lista = [];%La flechita es asignación
        llenar_lista(Resto),
        Lista = [Dato|Resto]
    ).

iniciar:-
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Llenado de listas%%%%%%%%%%%%%%%%%%%%%    
    writeln('Por favor, llena la lista de números enteros:'),
    llenar_lista(ListaNumeros),


    writeln('Por favor, llena la lista de colores en español:'),
    llenar_lista(ListaColoresES),


    writeln('Por favor, llena la lista de letras del abecedario en mayúsculas:'),
    llenar_lista(ListaMayusculas),


    writeln('Por favor, llena la lista de colores en inglés:'),
    llenar_lista(ListaColoresEN),


    writeln('Por favor, llena la lista con caracteres del conjunto {X,Y,Z,F}:'),
    llenar_lista(ListaXYZF),


    writeln('Por favor, llena la lista de marcas de automóviles:'),
    llenar_lista(ListaMarcasAutos),


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Impresión de listas%%%%%%%%%%%%%%%%%%%%%    
    writeln('Imprimiendo lista de Números...'),
    writeln(ListaNumeros),


    writeln('Imprimiendo lista de colores en español...'),
    writeln(ListaColoresES),


    writeln('Imprimiendo lista de letras mayúsculas...'),
    writeln(ListaMayusculas),


    writeln('Imprimiendo lista de colores en inglés...'),
    writeln(ListaColoresEN),


    writeln('Imprimiendo lista con caracteres del conjunto {XYZF}...'),
    writeln(ListaXYZF),


    writeln('Imprimiendo lista de marcas de autos...'),
    writeln(ListaMarcasAutos),

    append(ListaNumeros,ListaColoresES,ListaTotal1),
    append(ListaMayusculas,ListaColoresEN,ListaTotal2),
    append(ListaXYZF,ListaMarcasAutos,ListaTotal3),
    
    append(ListaTotal1,ListaTotal2,ListaTotal1y2),
    append(ListaTotal1y2,ListaTotal3,ListaTotal12y3),


    writeln('Imprimiendo lista de todo...'),
    writeln(ListaTotal12y3).


    /* writeln('Llenar datos a las listas...'),
    writeln('Llenar datos a la lista 1:'),
    llenar_lista(ListaDatos),
    writeln('Llenar datos a la lista 2:'),
    llenar_lista(ListaDatos2),
    
    writeln('Imprimiendo ambas listas de datos:'),
    writeln(ListaDatos),
    writeln(ListaDatos2),

    append(ListaDatos,ListaDatos2,ListaFinal),
    writeln('Imprimiendo la lista final (son ambas listas, pero concatenadas)'),
    writeln(ListaFinal). */

/*
    Llenar 6 listas:

    1.- Números
    2.- Colores en Español
    3.- Letras del abecedario en mayúsculas
    4.- Colores en inglés
    5.- X, Y, Z, F.
    6.- Marcas de automóviles
*/