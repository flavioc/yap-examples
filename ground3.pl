
:- table a/2.
:- table p/2.
:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

p(X, Y) :- a(X, Y).
p(2, 3).

e(1, 2).
e(1, 3).
e(5, 5).

a(X, Y) :- a(X, Z), e(Z, Y).
a(X, Y) :- e(X, Y).
