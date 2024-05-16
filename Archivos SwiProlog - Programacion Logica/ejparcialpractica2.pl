encargado_de(miguel,[admision,control,vigilacion]).
encargado_de(ricardo,[planificacion,asesoramiento]).
encargado_de(alicia,[direccion,control]).
comparten_tarea(X,Y):-encargado_de(X,T1), encargado_de(Y,T2),unoxuno(T1,T2).
unoxuno([],_):-fail.
unoxuno([Primera|_],T2):-member(Primera,T2).
unoxuno([_|Cola],T2):-unoxuno(Cola,T2).
member(X,[X|_]).
member(X,[_|L1]):-member(X,L1).

