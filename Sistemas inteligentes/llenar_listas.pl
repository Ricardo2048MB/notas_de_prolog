llenar_lista(Lista):-
    writeln('Escribe un dato'),
    read(Dato),
    (
        Dato = fin -> Lista = [];%La flechita es asignación
        llenar_lista(Resto),
        Lista = [Dato|Resto]
    ).

iniciar:-
    writeln('Llenar datos a la lista'),
    llenar_lista(ListaDatos),
    writeln('Lista de datos'),
    writeln(ListaDatos).