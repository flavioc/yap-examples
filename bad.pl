
:- table p/2.
:- use_subsumptive_tabling p/2.
:- yap_flag(tabling_mode, load_answers).

p(1, 2).
p(3, f(a)).
p(f(a), f(b)).
p(f(a), f(a)).
p(f(c), f(e)).
p(a(4), f(5)).
p(f(A), f(A)).
p(X, X).

