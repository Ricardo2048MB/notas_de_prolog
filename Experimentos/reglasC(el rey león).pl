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


super('Desturi','Mufasa').
super('Desturi','Scar').
super('Almasi','Mufasa').
super('Almasi','Scar').

super('Datty','Scar2').
super('Datty','Outsiders').
super('Spotty','Scar2').
super('Spotty','Outsiders').


super('Sacabi','Simba').
super('Mufasa','Simba').
super('Sacafina', 'Nala').
super('Rogue', 'Nala').
super('Nala','Kiaca').
super('Simba','Kiaca').
super('Scar2','Kovu').
super('Scar2','Vitnni').
super('Scar2','Nuka').
super('Zira','Kovu').
super('Zira','Vitnni').
super('Zira','Nuka').

%%%%machos y hembras
macho('Desturi').
macho('Spotty').
macho('Tai').
macho('Mufasa').
macho('Scar').
macho('Scar2').
macho('Simba').
macho('Kovu').
macho('Nuka').
macho('Rogue').


hembra('Outsiders').
hembra('Almasi').
hembra('Datty').
hembra('Sacabi').
hembra('Zira').
hembra('Sacafina').
hembra('Nala').
hembra('Vitnni').
hembra('Kiaca').


adoptivo('Tai').

sub_(A,B):-super(B,A).


hijo(A,B):-sub_(A,B),macho(A).
hija(A,B):-sub_(A,B),hembra(A).


alterno(A,B,C):-
sub_(A,C),
sub_(B,C),
A\=B.
%pondré una condición para que C simplemente tenga que existir (en caso de que me diga que es un singleton).

hermano(A,B):-
alterno(A,B,C),macho(A),
(hembra(C);macho(C)),
A\=B.


hermana(A,B):-
alterno(A,B,C),hembra(A),
(hembra(C);macho(C)),
A\=B.


esposo(A,B):-union(A,B),macho(A),hembra(B).
esposa(A,B):-union(A,B),hembra(A),macho(B).


padre(A,B):-super(A,B),macho(A),(macho(B);hembra(B)).

madre(A,B):-super(A,B),hembra(A),(macho(B);hembra(B)).


super2(A,C):-super(A,B),super(B,C).
%%%%Me pregunto si será necesario diferenciar variables aquí (tenía doble diferenciador).


abuela(A,B):-super2(A,B),hembra(A),\+adoptivo(B).

abuelo(A,B):-super2(A,B),macho(A),\+adoptivo(B).


nieto(A,B):-super2(B,A),macho(A).
nieta(A,B):-super2(B,A),hembra(A).


es_familiar_adoptivo(A,B):-
adoptivo(A),sub_(A,B);
adoptivo(A),alterno(A,B,C),(macho(C);hembra(C)).