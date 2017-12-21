sum(2,2,_):-write('Sum when N is 2: 2'),nl.
sum(N,R):-sum(2*N, R, second).
sum(N,R,_):-N > 1, N1 is N-2, sum(N1,R1, second), R is R1+N, write('Sum when N is '), write(N), write(': '), write(R), nl.