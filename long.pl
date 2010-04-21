
:- yap_flag(tabling_mode, load_answers).
:- table p/2.
:- use_subsumptive_tabling p/2.

p(X, X).
p(123456789, 3).
p(123456789, 4).
p(123456786, 2).
p(123456785, 2).
p(123456784, 2).
p(123456783, 2).
p(123456782, 2).
p(123456781, 2).
p(123456780, 2).
p(123456780, 123456789).
p(a, 123456789).
p(f(123456789, a), b).

%:- p(X, Y), fail.
%:- p(123456789, X).