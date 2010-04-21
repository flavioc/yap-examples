
:- table p/2.
%:- use_grounded_tabling p/2.

p(X, Y) :- edge(X, Y).
p(X, Y) :- p(X, Z), edge(Z, Y).

edge(1, 2).
edge(1, 5).
edge(2, 3).
edge(3, 4).
