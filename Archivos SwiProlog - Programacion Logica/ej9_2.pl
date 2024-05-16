adyac(_,_,[]):-fail.
adyac(X,Y,[X,Y|_]).
adyac(X,Y,[Y,X|_]).
adyac(X,Y,[_|L1]):-adyac(X,Y,L1).

