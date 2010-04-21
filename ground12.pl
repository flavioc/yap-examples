%%% XXX fix
%
:- table t/1.
:- table p/2.
:- yap_flag(tabling_mode, load_answers).

:- use_variant_tabling t/1.
:- use_grounded_tabling p/2.
% :- use_variant_tabling p/2.

p(X, Y) :- p(X, Z), e(Z, Y).
p(X, Y) :- e(X, Y).

e(1, 2).
e(2, 3).

t(X) :- p(1, X).
t(3).
t(4).

debug_query :- t(X), p(A, B), write((X, A, B)), nl, fail.
