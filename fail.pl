%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% File:      test_other02.pl
%% Author(s): Miguel Areias and Ricardo Rocha
%% Program:   Other tests
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

time_query:- t(X,Y),
             fail.

debug_query:- t(X,Y), 
              write(X), write(' - '), write(Y), nl,
              fail.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- table t/2.
tabled_predicate(t/2).

t(1,2).
t(X,Y):- t(X,Z), t(Z,Y).
t(2,1).
t(1,3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
