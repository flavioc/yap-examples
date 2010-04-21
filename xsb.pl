
:- table p/2.
:- use_subsumptive_tabling p/2.

p(X, Y) :- a(X), b(Y).

a(p(1)).
b(p(2)).
a(p(4)).
