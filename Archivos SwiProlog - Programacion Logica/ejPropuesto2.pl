#una funcion que devuelva la posicion de un elemento de la lista
pos(_,[],'no se encuentra').
pos(X,[X|_],1).
pos(X,[_|L1],R):-pos(X,L1,A),R is A+1.

