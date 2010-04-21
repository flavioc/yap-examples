
:- table p/2.
:- use_subsumptive_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

p(1, 2).
p(3, 4).
p(X, X).
p(X, Y).
