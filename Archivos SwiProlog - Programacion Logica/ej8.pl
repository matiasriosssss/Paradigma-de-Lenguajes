miembro(N,N).
miembro(N, [L1 | L2]):- miembro(N,L1); miembro(N,L2).

