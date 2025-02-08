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