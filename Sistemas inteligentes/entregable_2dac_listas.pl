/*Acá arriba solamente se define una relación entre un objeto, y una 
lista de objetos.*/
estudia(juan,[fisica,algebra,espanol]).
estudia(rebeca,[fisica,algoritmica,quimica]).


%Ésta segunda línea ya es un tanto más decente
inscrito(Estudiante,Materia):-/*Se dice que un Estudiante está inscrito en 
una Materia, si…*/
estudia(Estudiante,Materias),/*…el Estudiante estudia los elementos de una 
lista Materias…*/
pertenece(Materia,Materias).%…en la que justamente figura esa Materia.

%Recursividad
pertenece(X,[X|_]).%Regla de parada (hmm, no lo creo, me suena a "!"). 
/*En lo general sí es una regla de parada. Pero en lo particular 
sólo el caracter "!" es regla de parada.*/
pertenece(X,[_|T]):-pertenece(X,T)./*Aquí se ejecuta primero pertenece pero 
con T siendo la lista que es la cola (es decir, aquí está la recursividad).*/