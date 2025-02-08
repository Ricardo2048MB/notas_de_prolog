%Acá arriba solamente se define una relación entre un objeto, y una lista de objetos.
estudiante(juan,[fisica,algebra,espanol]).
estudiante(rebeca,[fisica,algoritmica,quimica]).

%Esto es una vil regurgitación.
materias_est(Estudiante,Materias):-
estudiante(Estudiante,Materias).

%Ésta segunda línea ya es un tanto más decente
inscrito(Estudiante,Materia):-%Un estudiante está inscrito en una materia, si…
estudiante(Estudiante,Materias),%…existe una relación entre ese estudiante y una lista de materias…
pertenece(Materia,Materias).%…en la que figura la materia en cuestión. 

%Recursividad
pertenece(X,[X|_]).%Regla de parada (hmm, no lo creo, me suena a "!"). En lo general sí es una regla de parada. Pero en lo particular sólo el caracter "!" es regla de parada.
pertenece(X,[_|T]):-pertenece(X,T).%Aquí se ejecuta primero pertenece pero con T siendo la lista que es la cola (es decir, aquí está la recursividad).