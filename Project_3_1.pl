f(0,1).
f(N,V):-N1 is N-1, f(N1,V2), V is 4*V2, write(N), write(': '), write(V), nl.