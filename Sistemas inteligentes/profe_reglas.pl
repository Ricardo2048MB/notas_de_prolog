padre(abraham,homero).
padre(homero,bart).
padre(homero,lisa).
padre(homero,maggie).

abuelo(A,C):-padre(A,B),padre(B,C).
nieto(C,A):-padre(A,B),padre(B,C).
