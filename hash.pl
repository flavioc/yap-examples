
:- table p/2.
:- table a/1.
:- use_subsumptive_tabling p/2.

p(2, 3).
p(4, 5).
p(2, 2).
p(1, 4).
p(1, 5).
p(1, 6).
p(1, 7).
p(1, 8).
p(1, 9).
p(1, 10).
p(1, 11).
p(1, 12).
p(1, 13).
p(1, 14).
p(1, 15).

a(X) :- findall((A, B), p(A, B), L), p(1, X).
a(2).
