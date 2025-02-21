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

intercalar([H1|T1],[],[H3|T3],[H1,H3|Resto]):-%%No estoy seguro
    intercalar(T1,[],T3,Resto).

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

menu_principal:-
    writeln('****************************************************************'),
    writeln('Menú principal'),
    writeln('1.-Llenar listas'),
    writeln('2.-Buscar un elemento de la lista'),
    writeln('3.-Intercalar listas'),
    writeln('4.-Eliminar un elemento de la lista'),
    writeln('5.-Salir'),
    writeln('****************************************************************'),
    read(Dato),
    (
        Dato = 1 -> llenado_de_listas;
        Dato = 2 -> buscar_elemento;
        Dato = 3 -> intercalar_listas;
        Dato = 4 -> eliminar_elemento;
        Dato = 5 -> salir
    ).


llenado_de_listas:-
    writeln('Por favor, llena la lista de números enteros:'),
    llenar_lista(ListaNumeros),
    writeln('Por favor, llena la lista de colores en español:'),
    llenar_lista(ListaColores),
    writeln('Por favor, llena la lista de letras mayúsculas:'),
    llenar_lista(ListaMayusculas),
    writeln('Ahora se van a imprimir las listas que llenaste...'),
    writeln(''),
    writeln('Lista de números:'),
    writeln(ListaNumeros),
    writeln(''),
    writeln('Lista de colores:'),
    writeln(ListaColores),
    writeln(''),
    writeln('Lista de letras mayúsculas:'),
    writeln(ListaMayusculas),
    menu_principal.


buscar_elemento:-
    A = [a1,a2,a3],
    B = [b1,b2,b3],
    C = [c1,c2,c3],
    writeln('Mostrando 3 listas dadas...'),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln('Tercera lista (C)'),
    writeln(C),
    writeln('¿Qué elemento quieres buscar en la lista A'),
    read(_ea),
    (
        member(_ea,A) -> writeln('El elemento existe en la lista A');
        writeln('El elemento no existe en la lista A')
    ),
    writeln('¿Qué elemento quieres buscar en la lista B'),
    read(_eb),
    (
        member(_eb,B) -> writeln('El elemento existe en la lista B');
        writeln('El elemento no existe en la lista B')
    ),
    writeln('¿Qué elemento quieres buscar en la lista C'),
    read(_ec),
    (
        member(_ec,C) -> writeln('El elemento existe en la lista C');
        writeln('El elemento no existe en la lista C')
    ),
    menu_principal.


intercalar_listas:-
    A = [a1,a2,a3],
    B = [b1,b2,b3],
    C = [c1,c2,c3],
    writeln('Mostrando 3 listas antes de intercalar (ya vienen dadas)...'),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln('Tercera lista (C)'),
    writeln(C),
    intercalar(A,B,C,Todas),
    intercalar(A,B,[],AYB),
    intercalar([],B,C,BYC),
    intercalar(A,[],C,AYC),
    writeln('Mostrando una lista con elementos intercalados (por orden en sus respectivas listas)...'),
    writeln('Intercalación entre todas las listas:'),
    writeln(Todas),
    writeln('Intercalación entre A y B:'),
    writeln(AYB),
    writeln('Intercalación entre B y C:'),
    writeln(BYC),
    writeln('Intercalación entre A y C:'),
    writeln(AYC),
    menu_principal.


eliminar_elemento:-
    A = [a1,a2,a3],
    B = [b1,b2,b3],
    C = [c1,c2,c3],
    writeln('Mostrando 3 listas antes de eliminar un elemento (ya vienen dadas)...'),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln('Tercera lista (C)'),
    writeln(C),
    writeln('Escribe un elemento que quieras eliminar de A'),
    read(_ea),
    writeln('Escribe un elemento que quieras eliminar de B'),
    read(_eb),
    writeln('Escribe un elemento que quieras eliminar de C'),
    read(_ec),
    delete(A,_ea,AR),
    delete(B,_eb,BR),
    delete(C,_ec,CR),
    writeln('Mostrando 3 listas tras eliminar un elemento de cada una...'),
    writeln('Primera lista (A)'),
    writeln(AR),
    writeln('Segunda lista (B)'),
    writeln(BR),
    writeln('Tercera lista (C)'),
    writeln(CR),
    menu_principal.


salir:-
    writeln('Gracias por usar éste programa de Prolog'),
    writeln('Adiós :)').


iniciar:-
    menu_principal.