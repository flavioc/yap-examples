
:- yap_flag(tabling_mode, subsumptive).
:- table p_sub_/2.


p_sub_f(a, b).
p_sub_f(b, c).
p_sub_f(c, d).

p_sub_(X, Y) :- p_sub_f(X, Y).
p_sub_(X, Y) :- p_sub_(a, A), p_sub_(C, D).
