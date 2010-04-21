
%% variant tabling by default
% :- use_subsumptive_tabling p/2.
:- yap_flag(tabling_mode, load_answers).
:- table p/2.

p(X, X).
p(a, b).

:- p(X, Y), fail.
:- p(a, X), fail.
