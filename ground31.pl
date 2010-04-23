
:- table t/1.
:- table p/2.
:- table a/1.

:- use_variant_tabling a/1.

a(X) :- t(X).

:- use_variant_tabling t/1.

t(X) :- a(X).
t(X) :- p(1, X), a(A), p(B, C).
t(2). t(3).

%:- use_variant_tabling p/2.
:- use_grounded_tabling p/2.

p(1,5). p(1,6). p(10, 10).
p(1, X) :- a(A), X = 20.

debug_query :- t(X), write(X), nl, fail.
:- debug_query.

% solucoes = 2,3,6,5,20
