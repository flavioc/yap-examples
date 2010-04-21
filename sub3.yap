
:- table p/2.
:- use_subsumptive_tabling p/2.
:- tabling_mode(p/2, load_answers).

p(2, 3).
p(1, 3).
p(2, 2).
