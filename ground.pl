:- table p/1.

:- table p/2.
:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

p(1, 2).
p(1, 1).

debug_query :- p(1, X), p(A, B), write((X, A, B)), nl, fail.
