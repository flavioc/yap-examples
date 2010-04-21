
:- table p/2.
:- use_subsumptive_tabling p/2.

p(X, Y) :- e(X, Y).
p(X, Y) :- p(X, Z), p(Z, Y).


e(1,2).
e(2,3).
e(3,4).
e(4,5).
e(5,6).

a :- p(X, 6), fail.

% ? p(X, 6).
