/*

Tengo que hacer que sean las uniones las que sean padres de otros elementos o algo así... Se queda pendiente esto 
a las 13:03 del miércoles 29 de enero de 2025

Este ya no falla, pero debo ver si hay algo que esté de más.

19:06 Ya le quité superfluidades y siguió funcionando de maravilla. Ahora sólo hay que justificar de dónde saqué la info.

Éste será el archivo que enviaré.

*/
union('Desturi', 'Almasi').
union('Datty','Spotty').
union('Sacabi','Mufasa').
union('Scar2','Zira').
union('Nala','Simba').


super("Desturi","Mufasa").
super("Desturi","Scar").
super("Almasi","Mufasa").
super("Almasi","Scar").

super("Datty","Scar2").
super("Datty","Zira").
super("Spotty","Scar2").
super("Spotty","Zira").

super("Sacabi","Simba").
super("Mufasa","Simba").
super("Nala","Kiaca").
super("Simba","Kiaca").




super('Abraham','Homero').
super('Mona','Homero').
super('Jackie','Marge').
super('Clancy','Marge').
super('Homero','Bart').
super('Homero','Lisa').
super('Homero','Maggie').
super('Marge','Bart').
super('Marge','Lisa').
super('Marge','Maggie').


super('Homero','Ayudante de santa').
super('Marge','Bola de nieve').


%%%%Hombres y mujeres
hombre('Abraham').
hombre('Clancy').
hombre('Homero').
hombre('Bart').


mujer('Mona').
mujer('Jackie').
mujer('Marge').
mujer('Lisa').
mujer('Maggie').


animal('Ayudante de santa').
animal('Bola de nieve').


sub_(A,B):-super(B,A).


hijo(A,B):-sub_(A,B),hombre(A).
hija(A,B):-sub_(A,B),mujer(A).


alterno(A,B,C):-
sub_(A,C),
sub_(B,C),
A\=B.
%pondré una condición para que C simplemente tenga que existir (en caso de que me diga que es un singleton).

hermano(A,B):-
alterno(A,B,C),hombre(A),
(mujer(C);hombre(C)),
A\=B.


hermana(A,B):-
alterno(A,B,C),mujer(A),
(mujer(C);hombre(C)),
A\=B.


esposo(A,B):-union(A,B),hombre(A),mujer(B).
esposa(A,B):-union(A,B),mujer(A),hombre(B).


padre(A,B):-super(A,B),hombre(A),(hombre(B);mujer(B)).

madre(A,B):-super(A,B),mujer(A),(hombre(B);mujer(B)).


super2(A,C):-super(A,B),super(B,C).
%%%%Me pregunto si será necesario diferenciar variables aquí (tenía doble diferenciador).


abuela(A,B):-super2(A,B),mujer(A),\+animal(B).

abuelo(A,B):-super2(A,B),hombre(A),\+animal(B).


nieto(A,B):-super2(B,A),hombre(A).
nieta(A,B):-super2(B,A),mujer(A).


es_mascota_de(A,B):-
animal(A),sub_(A,B);
animal(A),alterno(A,B,C),(hombre(C);mujer(C)).