
:- table nada/2, p/2.

p(X, Y) :- nada(X, Y).

p(2, 3).
p(2, 2).
p(4, 5).
p(5, 6).

p(X, Y) :-
  p(X, X),
  p(X, Y),
  p(Y, Y).
