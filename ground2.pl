
:- table p/2.
:- use_grounded_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

a(3, 4).
a(3, 5).

p(X, Y) :- a(X, Y).
p(1, 2).


