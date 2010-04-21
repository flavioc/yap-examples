
:- table p/3.
%:- tabling_mode(p/3, load_answers).
%:- use_subsumptive_tabling(p/3).

p(2, 2, 2).
p(2, 2, X).
p([1], [1], 2).
p(f(a, b), 1, 1).
p(f(b, b), 1, 1).
p(f([1, 2], a(x)), 1, 1).
%p(f(a, b), f(a, b), 1).
%p(f(a, b), f(a, g(b)), 1).
%p([1, 2], 6, 7).
%p([1, 2], [1, 2], 7).
%p(abc, coiso, [X]).
p(a(2), b(2), c(2)).
p(a(X), b(X), c(Z)).
p(Y, Y, [A, X]).
%p(2, 2, 2).
%p(X, Y, Z).
%

a(Y, Y, [A, X]).

a(L) :- findall([X, Y, Z], p(X, Y, Z), L).

%:- a(L), p(f(A,B),C,D), p(f(a,X),Y,Z).
