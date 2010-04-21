%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                            %%%
%%% Programa:                                                  %%%
%%%    Caminho numa grelha de 4x4 com recursividade à esquerda %%%
%%% Número de soluções para a query '?- lpath(X,Z).':          %%%
%%%    84                                                      %%%
%%%                                                            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- table lpath/2.
:- use_subsumptive_tabling lpath/2.

lpath(X,Z) :- lpath(X,Y), edge(Y,Z).
lpath(X,Z) :- edge(X,Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edge(1,2).
edge(2,3).
edge(3,4).

edge(5,6).
edge(6,7).
edge(7,8).

edge(9,10).
edge(10,11).
edge(11,12).

edge(13,14).
edge(14,15).
edge(15,16).

edge(1,5).
edge(5,9).
edge(9,13).

edge(2,6).
edge(6,10).
edge(10,14).

edge(3,7).
edge(7,11).
edge(11,15).

edge(4,8).
edge(8,12).
edge(12,16).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
