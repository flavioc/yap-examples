
:- yap_flag(tabling_mode, load_answers).
:- use_subsumptive_tabling p/2.
:- table p/2.

p(2, 3).
p(3, 4).
