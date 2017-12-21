f(0, 0):-write(0), write(': '), write(0), nl.
f(N, V) :- N > 0, f(N, V, _).
f(1, 1, 0):-write(1), write(': '), write(1), nl.
f(N, V1, V2):-N > 1, N1 is N - 1, f(N1, V2, V3), V1 is 2*V2 + V3, write(N), write(': '), write(V1), nl.