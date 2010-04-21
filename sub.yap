:- table p/2.
:- table p/3.
:- table t/1.
:- table l/1.
:- table f/1.
:- table d/3.
:- table li/3.
:- table pr/2.
:- table s/0.
:- table p/1.
:- table p2/1.
:- table p3/2.
:- tabling_mode(p/2, load_answers).
:- tabling_mode(p/3, load_answers).
:- tabling_mode(p/1, load_answers).
:- use_subsumptive_tabling(p/2).
:- use_subsumptive_tabling(p/1).
:- use_subsumptive_tabling(p/3).
:- use_subsumptive_tabling(p2/1).
:- use_subsumptive_tabling(p3/2).

s :- true.

p(2, 3).
p(1, 4).
p(5, 2).
p(2, 2).
p(1, 5).

p(1, 3, 3).
p(3, 5, 3).
p(2, 3, 2).
p(1, 4, 1).

t(X):-
    e(V),
    Z is V + 50,
    t(Y),
    Y < 10,
    X is Y + Z.
t(1).

e(100).
e(200).
e(300).

l([1, 2, 3]).
l([4, 5]).
l([5, 1]).
l([1]).
l([1, [2, 3]]).
l([1, [2, 3], 4, [5]]).
l([1 | 2]).
l([1, 2 | 3]).
l([1, 2 | [1, 2]]).

f(f(a)).
f(a([b, c])).
f(a(b(c))).

d(3.1415, a, 1.2).
d(1.2, a, 1.2).
d(3.1415, a, 3.1415).
d(1.2355645, b, c).
d(34.5, 1.5, 3.1).

li(123456789, a, 123456789).
li(987654321, a, 987654321).
li(123456789, b, 12).
li(987654321, b, 234567842).
li(987654321, 123456789, c).

pr(f(a, [b, c], 20, [b], [b|a], 1.232, 123456789, [123456]), a).
pr(f(a, a, 20, [b], [b|a], 1.232, 123456789, [123456]), a).

p(X) :- counter(1, 20, X).
p2(X) :- counter(1, 10, X).

p3(X, Y) :- counter(1, 5, X), counter(1, 3, Y).
p4(X, Y) :- counter(1, 5, X), counter(1, 3, Y).

counter(E, E, E) :- !.
counter(S, E, S).
counter(S, E, N) :-
  S < E,
  S1 is S + 1,
  counter(S1, E, N).
