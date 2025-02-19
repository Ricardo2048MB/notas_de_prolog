/*
    Menú:
    1.-Llenar listas
    2.-Buscar un elemento de la lista
    3.-Intercalar listas
    4.-Eliminar un elemento de la lista
    5.-Salir
*/


intercalar([],[],[],[]).

intercalar([H1|T1],[],[],[H1|Resto]):-
    intercalar(T1,[],[],Resto).

intercalar([],[H2|T2],[],[H2|Resto]):-
    intercalar([],T2,[],Resto).

intercalar([],[],[H3|T3],[H3|Resto]):-
    intercalar([],[],T3,Resto).

intercalar([H1|T1],[H2|T2],[],[H1,H2|Resto]):-
    intercalar(T1,T2,[],Resto).

intercalar([],[H2|T2],[H3|T3],[H2,T3|Resto]):-//No estoy seguro
    intercalar([],T2,T3,Resto).

intercalar([H1|T1],[H2|T2],[H3|T3],[H2,T3|Resto]):-//No estoy seguro
    intercalar(T1,T2,T3,Resto).

