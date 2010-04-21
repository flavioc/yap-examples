
:- table t/1.
:- table p/2.

%:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

t(X) :- p(1, X).
t(2).
t(3).

p(X, Y) :- p(A, B), e(X, Y).
p(1, X) :- t(X).

e(1, 5).
