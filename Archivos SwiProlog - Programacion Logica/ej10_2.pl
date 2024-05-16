reves([],[]).
reves([X|L1],R):- reves(L1,Y), append(Y,[X],R).
