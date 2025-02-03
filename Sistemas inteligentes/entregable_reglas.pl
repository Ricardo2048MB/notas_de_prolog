conyugue('Abraham','Mona').
conyugue('Jackie','Clancy').
conyugue('Homero','Marge').


procreo('Abraham','Homero').
procreo('Mona','Homero').
procreo('Jackie','Marge').
procreo('Clancy','Marge').
procreo('Homero','Bart').
procreo('Homero','Lisa').
procreo('Homero','Maggie').
procreo('Marge','Bart').
procreo('Marge','Lisa').
procreo('Marge','Maggie').


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


hijo(A,B):-procreo(B,A),hombre(A).
hija(A,B):-procreo(B,A),mujer(A).


hermano(A,B):-procreo(C,A),procreo(C,B),hombre(A).
hermana(A,B):-procreo(C,A),procreo(C,B),mujer(A).

esposo(A,B):-conyugue(A,B),hombre(A).
esposa(A,B):-conyugue(A,B),mujer(A).


padre(A,B):-procreo(A,B),hombre(A).
madre(A,B):-procreo(A,B),mujer(A).


abuelo(A,B):-
padre(A,C),padre(C,B);
padre(A,C),madre(C,B).


abuela(A,B):-
madre(A,C),padre(C,B);
madre(A,C),madre(C,B).


es_mascota_de(Animal,Persona1):-
conyugue(Persona1,Persona2),es_mascota_de(Animal,Persona2);
hijo(Persona1,Persona2),es_mascota_de(Animal,Persona2);
hija(Persona1,Persona2),es_mascota_de(Animal,Persona2);
hermano(Persona1,Persona2),es_mascota_de(Animal,Persona2);
hermana(Persona1,Persona2),es_mascota_de(Animal,Persona2).
es_mascota_de('Ayudante de santa', 'Homero').
es_mascota_de('Bola de nieve', 'Marge').
