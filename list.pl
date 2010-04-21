
:- table p/2.
:- use_subsumptive_tabling p/2.

p([2], a(4)).
p([4], f(5)).
p([3], b(5)).
p([[2]], 2).
p([[5]], 5).
