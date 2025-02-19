menu_principal:-
    writeln("****************************************************************"),
    writeln('Menú principal'),
    writeln('1.-Volver a mostrar el menú principal'),
    writeln('2.-Buscar un elemento de la lista'),
    writeln('3.-Intercalar listas'),
    writeln('4.-Eliminar un elemento de la lista'),
    writeln('5.-Salir'),
    writeln("****************************************************************"),
    read(Dato),
    (
        Dato = 1 -> menu_principal;
        Dato = 2 -> writeln("Has elegido Buscar un elemento de la lista");
        Dato = 3 -> writeln("Has elegido intercalar listas");
        Dato = 4 -> writeln("Has elegido eliminar un elemento de la lista");
        Dato = 5 -> writeln("Has elegido salir")
    ).