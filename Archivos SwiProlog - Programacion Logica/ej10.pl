union([],L2,L2).
union([X|L1],L2,[X|L3]):- union(L1,L2,L3).
reves([],[]).
reves([X|Z],R):-reves(Z,Y),union(Y,[X],R).






