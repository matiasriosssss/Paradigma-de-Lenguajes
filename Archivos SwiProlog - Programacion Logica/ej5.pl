potencia(_, P,X):- P=0 ,X is 1.
potencia(N,P,X):- P=1, X is N.
potencia(N,P,X):- P\=0, P\= 1, A is P-1, potencia(N,A,R), X is N*R.