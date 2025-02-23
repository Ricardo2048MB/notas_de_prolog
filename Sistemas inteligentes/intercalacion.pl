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
    writeln(''),
    writeln('Escribe un dato (escriba "fin." para terminar)'),
    read(Dato),
    (
        Dato = fin -> Lista = [];%La flechita es asignación
        llenar_lista(Resto),
        Lista = [Dato|Resto]
    ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

menu_principal(A,B,C):-
    writeln(''),
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
        Dato = 1 -> llenado_de_listas(A,B,C);
        Dato = 2 -> buscar_elemento(A,B,C);
        Dato = 3 -> intercalar_listas(A,B,C);
        Dato = 4 -> eliminar_elemento(A,B,C);
        Dato = 5 -> salir
    ).

%1
llenado_de_listas(A,B,C):-
    writeln(''),
    writeln('Por favor, llena la primera lista:'),
    llenar_lista(A),
    writeln(''),
    writeln('Por favor, llena la segunda lista:'),
    llenar_lista(B),
    writeln(''),
    writeln('Por favor, llena la tercera lista:'),
    llenar_lista(C),
    menu_principal(A,B,C).

%2
buscar_elemento(A,B,C):-
    writeln(''),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln(''),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln(''),
    writeln('Tercera lista (C)'),
    writeln(C),
    writeln(''),
    writeln('¿Qué elemento quieres buscar en la lista A'),
    read(_ea),
    (
        member(_ea,A) -> writeln('El elemento SÍ existe en la lista A');
        writeln('El elemento NO existe en la lista A')
    ),
    writeln('¿Qué elemento quieres buscar en la lista B'),
    read(_eb),
    (
        member(_eb,B) -> writeln('El elemento SÍ existe en la lista B');
        writeln('El elemento NO existe en la lista B')
    ),
    writeln('¿Qué elemento quieres buscar en la lista C'),
    read(_ec),
    (
        member(_ec,C) -> writeln('El elemento SÍ existe en la lista C');
        writeln('El elemento NO existe en la lista C')
    ),
    menu_principal(A,B,C).

%3
intercalar_listas(A,B,C):-
    writeln(''),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln(''),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln(''),
    writeln('Tercera lista (C)'),
    writeln(C),
    intercalar(A,B,C,Todas),
    intercalar(A,B,[],AYB),
    intercalar([],B,C,BYC),
    intercalar(A,[],C,AYC),
    writeln(''),
    writeln('Mostrando una lista con elementos intercalados (por el orden que tienen en sus respectivas listas)...'),
    writeln(''),
    writeln('Intercalación entre todas las listas:'),
    writeln(Todas),
    writeln(''),
    writeln('Intercalación entre A y B:'),
    writeln(AYB),
    writeln(''),
    writeln('Intercalación entre B y C:'),
    writeln(BYC),
    writeln(''),
    writeln('Intercalación entre A y C:'),
    writeln(AYC),
    menu_principal(A,B,C).

%4
eliminar_elemento(A,B,C):-
    writeln(''),
    writeln('Mostrando 3 listas antes de eliminar un elemento'),
    writeln(''),
    writeln('Primera lista (A)'),
    writeln(A),
    writeln(''),
    writeln('Segunda lista (B)'),
    writeln(B),
    writeln(''),
    writeln('Tercera lista (C)'),
    writeln(C),
    writeln(''),
    writeln('Escribe un elemento que quieras eliminar de A'),
    read(_ea),
    writeln(''),
    writeln('Escribe un elemento que quieras eliminar de B'),
    read(_eb),
    writeln(''),
    writeln('Escribe un elemento que quieras eliminar de C'),
    read(_ec),
    delete(A,_ea,AR),
    delete(B,_eb,BR),
    delete(C,_ec,CR),
    writeln(''),
    writeln('Mostrando 3 listas tras eliminar un elemento de cada una...'),
    writeln(''),
    writeln('Primera lista (A)'),
    writeln(AR),
    writeln(''),
    writeln('Segunda lista (B)'),
    writeln(BR),
    writeln(''),
    writeln('Tercera lista (C)'),
    writeln(CR),
    menu_principal(A,B,C).

%5
salir:-
    writeln(''),
    writeln('Gracias por usar éste programa de Prolog'),
    writeln('Adiós :)').


iniciar:-
    menu_principal(A,B,C).