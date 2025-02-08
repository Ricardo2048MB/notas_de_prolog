%Estudiante(cabeza|cola)
%Estudiante(juan,rosa,rebeca)

estudiante(juan,[matematicas,fisica,programacion]).
estudiante(rebeca,[quimica,espanol,algoritmica]).

calificacion(juan,matematicas,8.5).
calificacion(juan,fisica,7).
calificacion(juan,programacion,5).
calificacion(rebeca,quimica,8.5).
calificacion(rebeca,espanol,7).
calificacion(rebeca,algoritmica,5).


%recursividad
pertenece(X,[X|_]).%Regla de parada
pertenece(X,[_|T]):-pertenece(X,T).

materias_que_estudia(Estudiante,Materias):-
estudiante(Estudiante,Materias),pertenece(Materia,Materias).