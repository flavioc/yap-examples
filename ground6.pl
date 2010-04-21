
:- table t/1.
:- table p/2.
:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

t(X) :- p(1, X).
t(1).
t(2).

p(1, X) :- t(X).
p(X, Y) :- p(A, B), e(X, Y).

e(1, 2).
e(1, 3).
e(5, 3).

debug_query :- t(X), write(X), nl, fail.
