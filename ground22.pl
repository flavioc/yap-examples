
:- table t/1.
:- table p/2.
:- table b/1.
:- table a/1.

:- use_grounded_tabling p/2.
:- use_variant_tabling t/1.
:- use_variant_tabling b/1.
:- yap_flag(tabling_mode, load_answers).

b(X) :- t(X).
b(5).
b(6).

t(X) :- p(1, A), a(X).
t(X) :- p(A, B), e(X).

e(3).
e(4).

a(X) :- t(X).
a(10).
a(20).

p(1, 0).
p(1, Y) :- b(Y).
p(50, 60).
p(70, 80).

debug_query :- b(X), write(X), nl, fail.
