/*

Tengo que hacer que sean las uniones las que sean padres de otros elementos o algo así... Se queda pendiente esto 
a las 13:03 del miércoles 29 de enero de 2025

18:43 del miércoles 29 de enero de 2025: ya no falla. Se queda así este y 
le saco una copia para modificar la copia en busca de cosas superfluas.

*/

union('Abraham','Mona').
union('Jackie','Clancy').
union('Homero','Marge').


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


sub_(A,B):-super(B,A),A\=B.


hijo(A,B):-sub_(A,B),hombre(A),A\=B.
hija(A,B):-sub_(A,B),mujer(A),A\=B.


alterno(A,B,C):-
sub_(A,C),
sub_(B,C),
A\=B,
B\=C.


hermano(A,B):-
alterno(A,B,C),hombre(A),
(mujer(C);hombre(C)),
A\=B,
B\=C.


hermana(A,B):-
alterno(A,B,C),mujer(A),
(mujer(C);hombre(C)),
A\=B,
B\=C.


esposo(A,B):-union(A,B),hombre(A),mujer(B),A\=B.
esposa(A,B):-union(A,B),mujer(A),hombre(B),A\=B.


padre(A,B):-super(A,B),hombre(A),
(hombre(B);mujer(B)),
A\=B.

madre(A,B):-super(A,B),mujer(A),
(hombre(B);mujer(B)),
A\=B.


super2(A,C):-super(A,B),super(B,C),A\=B,B\=C.


abuela(A,B):-super2(A,B),mujer(A),
\+animal(B),
A\=B.

abuelo(A,B):-super2(A,B),hombre(A),
\+animal(B),
A\=B.


nieto(A,B):-super2(B,A),hombre(A),A\=B.
nieta(A,B):-super2(B,A),mujer(A),A\=B.


es_mascota_de(A,B):-
animal(A),sub_(A,B);
animal(A),alterno(A,B,C),(hombre(C);mujer(C)).


/*(  
    sub_(A,B);
    alterno(A,B,C)
),
animal(A),
A\=B;
B\=C.*/