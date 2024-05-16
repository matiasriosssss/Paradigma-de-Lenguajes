afiliado([juan,hugo,mario,ana,matias]).
grupoFamiliar(juan,[carlos,susy,carolina]).
grupoFamiliar(hugo,[mauricio]).
grupoFamiliar(mario,[]).
grupoFamiliar(ana,[ale,virginia,andres]).
grupoFamiliar(matias,[]).
listar([],_).
listar([X|L1],R):-grupoFamiliar(X,GF),GF = [],listar(L1,A), append([X],A,R).
listar([_|L1],R):-listar(L1,R).
listar_sin_grupo_familiar(X):-afiliado(LA),listar(LA,X).



