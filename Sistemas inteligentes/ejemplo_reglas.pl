/*
*
*
*
*
martes 28 de enero de 2025

CABEZA:-COLA
Las reglas van desde el nivel más sencillo al más complicado.
*
*
*
*
*/
%	A	B
altura(jirafa,elefante).
altura(elefante,leon).
altura(leon,perro).
masGrande(A,C):-altura(A,B),altura(B,C)
%,altura(C,D).
