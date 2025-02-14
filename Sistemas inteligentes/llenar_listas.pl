%%%%%%%%%%%%%%%%%%%%%%%%Esta cosa incluye elementos específicos (espero, jaja)
agregar_especificos([_e0,_e3,_,_e5|_],[_e6,_e8|_],[_e1,_e4|_],[_e7,_e9|_],[_e2|_],Toloquesobra,Resultado):-
    ListaAuxiliar = [_e0,_e1,_e2,_e3,_e4,_e5,_e6,_e7,_e8,_e9],
    append(ListaAuxiliar,Toloquesobra,Resultado).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Llenar lista (general)
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

%%%%%%%%%%%%%%%%%%%%%%%%Hasta este momento yo no sabía como appendizar bien jaja
    append(ListaNumeros,ListaColoresES,ListaTotal1),
    append(ListaMayusculas,ListaColoresEN,ListaTotal2),
    append(ListaXYZF,ListaMarcasAutos,ListaTotal3),
    
    append(ListaTotal1,ListaTotal2,ListaTotal1y2),
    append(ListaTotal1y2,ListaTotal3,ListaTotal12y3),

/* Siento que aquí pude haber hecho una cadenita en lugar de muchas ListasTotales,
pero bueno ya ni modos, yo he fallado, como dijo MC Dinero. */
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    writeln('Imprimiendo lista de todo...'),
    writeln(ListaTotal12y3),


    %%%%%%ACÁ
    agregar_especificos(
        ListaNumeros,
        ListaColoresES,
        ListaMayusculas,
        ListaColoresEN,
        ListaXYZF,
        ListaMarcasAutos,
        ListaPizarron),

    writeln('Imprimiendo lista como en el pizarrón...'),
    writeln(ListaPizarron).
    %%%%%%%%ESTO ERA EL CÓDIGO QUE HABÍAMOS HECHO EN CLASE
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
    De tarea:
    Llenar éstas 6 listas:

    1.- Números
    2.- Colores en Español
    3.- Letras del abecedario en mayúsculas
    4.- Colores en inglés
    5.- X, Y, Z, F.
    6.- Marcas de automóviles
*/