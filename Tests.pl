/*Random Tests*/
squares(N1,N1):-Product is N1 * N1, write(Product),nl.
squares(N1,N2):-N2 >= N1, N3 is N2-1, squares(N1,N3), Product is N2 * N2, write(Product),nl.
factorial(0,1).
factorial(N,F):-N > 0, N1 is N - 1, factorial(N1,F1), F is N * F1,!.
/*Alt squares: getsquare(n1,N2):- N1<N2
			   getsquare(N1,N2):- write(N1), write('squared is'), square is N1*N1, write(square), nl, M is N1+1, getsquare(M,N2).*/
			   

animal(tiger).
animal(hyena).
animal(lion).
animal(zebra).
animal(eagle).
animal(sparrow).
animal(snake).
animal(lizard).
display_animal():-list(animal(X)).