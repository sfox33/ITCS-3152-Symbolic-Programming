/*Extra Credit 10-15-15*/
sequence(N, NF):-
	N > 3,
	A is N-1, B is N-2, C is N-3,
	sequence(A, AF), sequence(B, BF), sequence(C, CF),
	NF is (AF + BF - CF).
sequence(1,1).
sequence(2,2).
sequence(3,3).

start(Z):-
	X is sequence(1,Y), write(X).