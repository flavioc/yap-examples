
:- table p/2.
:- use_subsumptive_tabling p/2.
%:- yap_flag(tabling_mode, local).

p(X, Y) :- e(X, Y).
p(X, Y) :- p(X, Z), p(Z, Y).

e([1],[2]).
e([2],[3]).
%e(1,2).
%e(2,3).

% ? p([L],[L]).
