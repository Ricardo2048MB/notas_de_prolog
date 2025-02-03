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


hijo(A,B):-super(B,A),hombre(A),A\=B.
hija(A,B):-super(B,A),mujer(A),A\=B.


hermano(A,B):-
super(C,A),
super(C,B),
hombre(A),
mujer(C),
A\=B,
B\=C.


hermana(A,B):-
super(C,A),
super(C,B),
mujer(A),
mujer(C),
A\=B,
B\=C.

esposo(A,B):-union(A,B),hombre(A),mujer(B),A\=B.
esposa(A,B):-union(A,B),mujer(A),hombre(B),A\=B.


padre(A,B):-super(A,B),hombre(A),A\=B.
madre(A,B):-super(A,B),mujer(A),A\=B.


super2(A,B):-super(A,C),super(C,B),A\=B,B\=C.


abuela(A,B):-super2(A,B),mujer(A),A\=B.
abuelo(A,B):-super2(A,B),hombre(A),A\=B.


nieto(A,B):-super2(B,A),hombre(A),A\=B.
nieta(A,B):-super2(B,A),mujer(A),A\=B.


es_mascota_de('Ayudante de santa', 'Homero').
es_mascota_de('Bola de nieve', 'Marge').


%es_mascota_de(A,B):-yes