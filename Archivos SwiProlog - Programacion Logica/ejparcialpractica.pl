contar(_,[],0).
contar(X,[Y|L1],R):-X=Y, contar(X,L1,A),R is A+1.
contar(X,[Y|L1],R):-X\=Y, contar(X,L1,R).
