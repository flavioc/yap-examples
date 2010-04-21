
:- table p/2.
:- use_subsumptive_tabling p/2.

p(X, X).
p(a, 3).
p(a, 4).
p(b, 2).
p(c, 2).
p(d, 2).
p(e, 2).
p(f, 2).
p(g, 2).
p(h, 2).
p(j, j).
p(m, 123).
p(f(20, a), b).

:- p(X, Y), fail.
