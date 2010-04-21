%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                           %%%
%%% Programa:                                                 %%%
%%%    Mesma geração num cilindro de 5x5x2 nós                %%%
%%% Número de soluções para a query '?- samegen(X,Z).':       %%%
%%%    626                                                    %%%
%%%                                                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- table samegen/2.
%:- use_subsumptive_tabling(samegen/2).
:- use_variant_tabling(samegen/2).
:- tabling_mode(samegen/2, load_answers).
:- table same/2.
:- use_subsumptive_tabling(same/2).
:- tabling_mode(same/2, load_answers).

%% call-by-subsumption prunes specific answers after a more general
%% answer has been inserted, samegen will not return 606
%% but 601 answers. !!!
samegen(X,Z) :- cylinder(X,Y), samegen(Y,W), cylinder(Z,W).
samegen(X,X).

same(X,Z) :- cyl(X,Y), same(Y,W), cyl(Z,W).
same(X,X).

cyl(1,1).
cyl(1,20).
cyl(20,1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cylinder(1,20).
cylinder(1,20).
cylinder(2,3).
cylinder(2,4).
cylinder(3,10).
cylinder(3,23).
cylinder(4,25).
cylinder(4,20).
cylinder(5,11).
cylinder(5,15).
cylinder(6,11).
cylinder(6,18).
cylinder(7,11).
cylinder(7,11).
cylinder(8,15).
cylinder(8,3).
cylinder(9,4).
cylinder(9,1).
cylinder(10,5).
cylinder(10,6).
cylinder(11,2).
cylinder(11,8).
cylinder(12,5).
cylinder(12,13).
cylinder(13,16).
cylinder(13,8).
cylinder(14,19).
cylinder(14,15).
cylinder(15,25).
cylinder(15,18).
cylinder(16,18).
cylinder(16,22).
cylinder(17,23).
cylinder(17,25).
cylinder(18,16).
cylinder(18,7).
cylinder(19,8).
cylinder(19,7).
cylinder(20,7).
cylinder(20,1).
cylinder(21,4).
cylinder(21,18).
cylinder(22,17).
cylinder(22,23).
cylinder(23,16).
cylinder(23,15).
cylinder(24,6).
cylinder(24,5).
cylinder(25,20).
cylinder(25,2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- findall([X, Y], samegen(X, Y), L).
