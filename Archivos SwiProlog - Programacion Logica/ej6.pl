modulo(N,_,R) :- N = 0, R is 0.
modulo(N,D,R):- N < D, R is N.
modulo(N,D,R):- N \= 0, N >= D, X is N - D, modulo(X,D,R).
