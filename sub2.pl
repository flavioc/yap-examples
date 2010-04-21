
:- table p/2.
:- table p/3.
:- table p/1.
:- use_subsumptive_tabling(p/2).
:- use_subsumptive_tabling(p/3).
:- use_subsumptive_tabling(p/1).
:- yap_flag(tabling_mode, load_answers).

p(f(a), [1, 2]).
p(f(b), [1, 3]).
p([f(1)], a).
p(2, 3).
p(2, 4).
p(2, 5).
p(3, 5).
p(4, 6).
p(f(a, b, [1, 2, 3, 4, 5]), [1, 2]).

%p(a(x(a, b)), a(c, d)).
%p(a(a), a(c)).
%p([1], [a, b, 1]).
%p(a(x)).
%p([1, 2]).
%p([1, 1]).
%p(a, a(c, d)).
%p(X, X).
%p(X, f(X, Y)).
%p(X, Y, f(X, A)).

%
% p(X, Y, f(Z, A)).
%   ?- p(X, X, f(X, Y)).
%   ===> TABLE_TRY_SINGLE
%   subgoal_search for SUBGOAL: p(VAR0,VAR0,f(VAR0,VAR1))
%   ===> TABLE_NEW_ANSWER
%   POTENCIAL ERROR- j == arity_args (table_new_answer)
%   Private completion
%
%   true ? ;
