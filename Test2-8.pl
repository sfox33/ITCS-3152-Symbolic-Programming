/*Problem 8*/
quicksort([],[]).
quicksort([Head|Tail],Sorted):- pivoting(Head,Tail,L1,L2), quicksort(L1,Sorted1), quicksort(L2,Sorted2), append(Sorted1,[Head|Sorted2], Sorted).
pivoting(Head,[],[],[]).
pivoting(Head,[X|Tail],[X|L],G):- X =< Head, pivoting(Head,Tail,L,G).
pivoting(Head,[X|Tail],L,[X|G]):- X > Head,pivoting(Head,Tail,L,G).