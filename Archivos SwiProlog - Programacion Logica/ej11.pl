elim(_,[],_).
elim(X,[Y|L1],[Y|R]):- X\=Y, elim(X,L1,R).
elim(X,[Y|L1],R):- X=Y, elim(X,L1,R).
