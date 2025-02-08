/*
estudiante(juan,[fisica,algebra,espanol]).
estudiante(rebeca,[fisica,algoritmica,quimica]).


materias_est(Estudiante,Materias):-
estudiante(Estudiante,Materias).

inscrito(Estudiante,Materia):-
estudiante(Estudiante,Materias),
pertenece(Materia,Materias).

%Recursividad
pertenece(X,[X|_]).%regla de parada (hmm, no lo creo, me suena a "!")
pertenece(X,[_|T]):-pertenece(X,T).%Aquí se ejecuta primero pertenece pero con T siendo la lista que es la cola.
*/


accesorio("Laptop HP",["Cargador","Bandeja de CD externa","Micrófono","Mouse","Joystick Bluetooth","Bocinas","USB HUB","Ventilador USB"]).
accesorio("PC Gamer",["Antena 2.4G","Lector de tarjetas múltiple","Headset","Mouse","Joystick 2.4G","Bocinas","USB HUB","Ventilador USB","Pantalla Yeyan"]).
accesorio("Steam deck",["Headset","Funda"]).

precio("Laptop",7500).
precio("PC Gamer",37000).


color("Laptop",["Azul","Verde","Rojo","Púrpura","Rosa mexicano","Plata","Negro","Tornasol verde-naranja"]).
color("PC Gamer",["Azul con esquinas grises","Verde con esquinas azules","Rojo con esquinas naranja","Púrpura mate","Rosa mexicano","Plata titanio","Negro","Tornasol verde-naranja"]).



pertenece(X,[X|_]).
pertenece(X,[_|T]):-pertenece(X,T).


