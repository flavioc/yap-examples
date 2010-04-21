
:- table p/2.
:- use_subsumptive_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

p(1.5, 6.12).
p(X, X).
