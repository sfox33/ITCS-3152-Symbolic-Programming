/*Problem 10*/
setmanip(L1, L2, Intersection, Union, Difference):- intersection(L1,L2,I), difference(L1,L2,D),union(L1,L2,U), Union = U, Difference = D, Intersection = I.

intersection([], L, []).
intersection([H|T], L2, I):- not(member(H,L2)), intersection(T,L2,I). 
intersection([H|T], L2, [H|I]):- member(H,L2), intersection(T,L2,I).
difference([], [_|_],[]).
difference([H|T], L2, D):- member(H, L2), difference(T,L2,D).
difference([H|T], L2, [H|D]):- not(member(H,L2)), difference(T,L2,D).
union([],L,L).
union(L,[],L).
union([H|T], L2, U):- member(H,L2), union(T,L2,U).
union([H|T], L2, [H|U]):- not(member(H,L2)), union(T,L2,U).