
:- table p/2.
:- use_grounded_tabling p/2.

p(1, 1).
p(1, 2).
p(5, 5).
p(5, 4).
p(f(1), 2).
p(f(3), 2).
p(f(6), 2).
p(f(3), 5).
p([1, 2], [2]).
p([1, 2], [4]).
p([1, 5], [5]).
p(123456789, 2).
p(123456789, 3).
p(123457779, 3).

%debug_query :- p(f(3),X), p(f(A), B), write((X, A, B)), nl, fail.
%debug_query :- p([1, 2],A), p([D, E], B), write((D)), nl, fail.
%debug_query :- p(123456789, X), p(A, B), write((X)), nl, fail.
%debug_query :- p(X, X), p(A, B), write((X, X)), nl, fail.

:- table p/3.
:- use_grounded_tabling p/3.
:- yap_flag(tabling_mode, load_answers).

p(1, 2, 3).
p(1, 2, 2).
p(1, 5, 5).
p(4, 5, 6).
p(1, 5, 2).

debug_query :- p(1, A, 2), p(1, B, B), p(1, C, D), fail.

:- debug_query.
