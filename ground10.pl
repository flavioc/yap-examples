%% test internal generators

:- table a/1.
:- table p/2.

:- yap_flag(tabling_mode, load_answers).
:- use_grounded_tabling p/2.
:- use_variant_tabling a/1.

a(2).
a(3).

p(1, Y) :- a(Y).
p(3, 4).

debug_query :- p(1, X), a(A), p(B, D), write((X, A, B, D)), nl, fail.

% 2,2,1,2
% 2,2,3,4
% 3,2,1,2
% 3,2,3,4
% 3,3,1,2
% 3,3,3,4
% 2,2,1,3
% 2,3,1,2
% 2,3,3,4
% 2,3,1,3
% 3,3,1,3
% 3,2,1,3

