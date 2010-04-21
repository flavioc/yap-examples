
:- table p/2.
:- use_subsumptive_tabling p/2.

e([1], [2]).
e([3], [4]).

p(X, Y) :- e(X, Z), p(Z, Y).
p(X, Y) :- e(X, Y).
