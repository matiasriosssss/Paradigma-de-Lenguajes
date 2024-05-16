adyac(X, Y,[X,Y|_]).
adyac(X,Y,[Y,X|_]).
adyac(X,Y,[_|L2]):-adyac(X,Y,L2).



