lista(Animales):-Cabeza=conejo,Cola=[gato,perro,pajaro,serpiente],
Animales=[Cabeza|Cola].

ver_lista:-
    lista(Animales),
    write('Elementos en la lista '),
    write(Animales),nl.

consultar_elemento:-
    write('Ingrese el elemento que busca '),
    read(Animal),
    en_lista(Animal),
    write('El elemento está en la lista'),nl;
    write('El elemento no está en la lista'),nl.

miembro(X,[X|_]).
miembro(X,[_|Y]):-miembro(X,Y).
en_lista(X):-lista(Y), miembro(X,Y).

menu:-
write('Menu'),nl,
write('1.- Ver lista'),nl,
write('2.- Consultar elemento en la lista'),nl,
write('3.- Salir'),nl,
write('Seleccione una opción'),nl,
read(Option),
option(Option).

option(1):-ver_lista,menu,nl.
option(2):-consultar_elemento,menu,nl.
option(3):-write('Has salido del menú').