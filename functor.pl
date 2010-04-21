
:- table p/2.
:- use_subsumptive_tabling p/2.

p(f(2), a(4)).
p(f(4), f(5)).
p(a(3), b(5)).
p(f(f(2)), 2).
p(f(f(5)), 5).
