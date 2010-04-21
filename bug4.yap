
:- yap_flag(tabling_mode, subsumptive).

:- table p/2.

dados(a, b).
dados(b, c).
dados(c, d).
dados(d, e).
dados(f, g).
dados(t, y).
%dados(g, h).

p(X, Y) :-
  dados(A, Y),
  p(B, A).

p(X, Y) :- p(A, B).

:- p(X, z), fail.
