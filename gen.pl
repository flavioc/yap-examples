
:- table p/2.
:- use_subsumptive_tabling p/2.

p(1, 1).
p(1, 2).
p(1, 3).
p(1, 4).
p(1, 5).
p(1, 6).
p(1, 7).
p(1, 8).
p(1, 9).
p(1, 10).

a(X) :- p(A, 1),
        p(B, 2),
        p(C, 3),
        p(D, 4),
        p(E, 5),
        p(F, 6),
        p(G, 7),
        p(H, 8),
        p(I, 9),
        (X = 2 ; X = 3).
