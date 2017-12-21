parent(chester,irvin).
parent(chester,clarence).
parent(chester,mildred).
parent(irvin,ron).
parent(irvin,ken).
parent(clarence,shirley).
parent(clarence,sharon).
parent(clarence,charlie).
parent(mildred,mary).
male(chester).
female(mildred).
male(irvin).
/* differ(male, femail) */
female(shirley).
male(clarence).
female(sharon).
male(ron).
female(mary).
male(ken).
male(charlie).
father(X,Y):-parent(X,Y), male(X).
/*define grandparent */
grandparent(X,Y):-parent(X,Z), parent(Z,Y).
paternalgrandfather(X,Y):-father(X,Z),
father(Z,Y).
sibling(X,Y):-parent(Z,X), parent(Z,Y), \+ (X=Y).
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z), ancestor(Z,Y).
parent(ken,nora).
female(nora).
parent(ken,elizabeth).
female(elizabeth).

/* define last and first in a list */
firstlast(List,First,Last):-
List = [Head|Tail],
First=Head,
Last=Tail.

perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).
perm([],[]).
takeout(X,[X|R],R).
takeout(X,[F|R],[F|S]) :- takeout(X,R,S).

subset([],[]).
subset([X|L],[X|S]) :-subset(L,S).
subset(L, [_|S]) :-subset(L,S).

/*Problem 8*/
quicksort([],[]).
quicksort([Head|Tail],Sorted):- pivoting(Head,Tail,L1,L2), quick_sort(L1,Sorted1), quick_sort(L2,Sorted2), append(Sorted1,[Head|Sorted2], Sorted).
pivoting(Head,[],[],[]).
pivoting(Head,[X|Tail],[X|L],G):- X =< Head, pivoting(Head,Tail,L,G).
pivoting(Head,[X|Tail],L,[X|G]):- X > Head,pivoting(Head,Tail,L,G).

/*Problem 9*/
degreesF(D, F):- F is (9/5) * D + 32.0.

/*Problem 10*/
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











