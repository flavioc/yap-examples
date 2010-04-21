
:- table p/2.
:- table t/1.
:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

t(X) :- p(1, X), p(A, B).

e(1, 2).
e(2, 3).
e(3, 4).

p(X, Y) :- e(X, Y).
p(X, Y) :- e(X, Z), p(Z, Y).
p(1, X) :- t(X).

