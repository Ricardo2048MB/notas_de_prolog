/*
    Menú:
    1.-Llenar listas
    2.-Buscar un elemento de la lista
    3.-Intercalar listas
    4.-Eliminar un elemento de la lista
    5.-Salir
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Zona de definición de reglas
intercalar([],[],[],[]).

intercalar([H1|T1],[],[],[H1|Resto]):-
    intercalar(T1,[],[],Resto).

intercalar([],[H2|T2],[],[H2|Resto]):-
    intercalar([],T2,[],Resto).

intercalar([],[],[H3|T3],[H3|Resto]):-
    intercalar([],[],T3,Resto).

intercalar([H1|T1],[H2|T2],[],[H1,H2|Resto]):-
    intercalar(T1,T2,[],Resto).

intercalar([],[H2|T2],[H3|T3],[H2,H3|Resto]):-%%No estoy seguro
    intercalar([],T2,T3,Resto).

intercalar([H1|T1],[H2|T2],[H3|T3],[H1,H2,H3|Resto]):-%%No estoy seguro
    intercalar(T1,T2,T3,Resto).

llenar_lista(Lista):-
    writeln('Escribe un dato (escriba "fin." para terminar de llenar esta lista)'),
    read(Dato),
    (
        Dato = fin -> Lista = [];%La flechita es asignación
        llenar_lista(Resto),
        Lista = [Dato|Resto]
    ).


menu_principal:-
    writeln("****************************************************************"),
    writeln('Menú principal'),
    writeln('1.-Llenar listas'),
    writeln('2.-Buscar un elemento de la lista'),
    writeln('3.-Intercalar listas'),
    writeln('4.-Eliminar un elemento de la lista'),
    writeln('5.-Salir'),
    writeln("****************************************************************"),
    read(Dato),
    (
        Dato = 1 -> llenado_de_listas;
        Dato = 2 -> buscar_elemento;
        Dato = 3 -> intercalar_listas;
        Dato = 4 -> eliminar_elemento;
        Dato = 5 -> salir;
        Dato = 6 -> imprimir_listas
    ).


llenado_de_listas:-
    writeln('Por favor, llena la lista de números enteros:'),
    llenar_lista(ListaNumeros),
    writeln('Por favor, llena la lista de colores en español:'),
    llenar_lista(ListaColoresES),
    writeln('Por favor, llena la lista de letras del abecedario en mayúsculas:'),
    llenar_lista(ListaMayusculas),
    writeln("Las listas han sido llenadas; si se vuelve a ejecutar la opción 1,"),
    writeln("se sobreescribirán las que ya habías llenado."),
    menu_principal.


buscar_elemento:-
    writeln("Has elegido Buscar un elemento de la lista"),
    menu_principal.


intercalar_listas:-
    writeln("Has elegido intercalar listas"),
    menu_principal.

eliminar_elemento:-
    writeln("Has elegido eliminar un elemento de la lista"),
    menu_principal.

salir:-
    writeln("Gracias por usar éste programa de Prolog"),
    writeln("Adiós :)").


imprimir_listas:-
    writeln("Ahora procedo a imprimir cada una de las listas."),
    writeln("Imprimiendo lista de números..."),
    writeln(ListaNumeros),
    writeln("Imprimiendo lista de colores en Español..."),
    writeln(ListaColoresES),
    writeln("Imprimiendo lista de letras mayúsculas..."),
    writeln(ListaMayusculas),
    menu_principal.



iniciar:-
    menu_principal.