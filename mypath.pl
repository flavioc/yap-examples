
:- table p/2.
:- table pv/2.
:- table single/2.
%:- tabling_mode(p/2, load_answers).
%:- yap_flag(tabling_mode, local).
%:- tabling_mode(single/2, load_answers).
:- use_subsumptive_tabling p/2.
:- use_variant_tabling(pv/2).
:- use_subsumptive_tabling(single/2).

p(X, Y) :- edge(X, Y).
p(X, Y) :- edge(X, Z), p(Z, Y).

edge(1,2).
edge(2,3).
edge(3,4).

pv(X, Y) :- edge(X, Y).
pv(X, Y) :- edge(X, Z), pv(Z, Y).

single(X, Y) :- edge(X, Y), coiso(X, Y).

coiso(1, 2) :- single(2, X).
coiso(X, Y).

