
:- use_module(library(tries)).

trie_simple(T) :- trie_open(A),
             trie_put_entry(A, a, _),
             trie_put_entry(A, b, _),
             trie_put_entry(A, 1, _),
             trie_put_entry(A, 2, _),
             trie_tree(A, T),
             trie_close(A).
             
trie_lists(T) :- trie_open(A),
                 trie_put_entry(A, [1, 2, 3], _),
                 trie_put_entry(A, [1, 3, 4], _),
                 trie_put_entry(A, [2], _),
                 trie_put_entry(A, [3, 3, 4, 5, 7], _),
                 trie_tree(A, T),
                 trie_close(A).
                 
trie_floats(T) :- trie_open(A),
                  trie_put_entry(A, 1.2, _),
                  trie_put_entry(A, 2.7, _),
                  trie_put_entry(A, 2.1, _),
                  trie_put_entry(A, 3.14, _),
                  trie_put_entry(A, 1.3, _),
                  trie_put_entry(A, 1.4, _),
                  trie_put_entry(A, 1.5, _),
                  trie_put_entry(A, 1.6, _),
                  trie_put_entry(A, 1.7, _),
                  trie_put_entry(A, 1.8, _),
                  trie_put_entry(A, 1.9, _),
                  trie_put_entry(A, a, _),
                  trie_tree(A, T),
                  trie_close(A).
                  
trie_functors(T) :- trie_open(A),
                    trie_put_entry(A, f(1, 2, 3), _),
                    trie_put_entry(A, p(1), _),
                    trie_put_entry(A, p(2), _),
                    trie_put_entry(A, f(1, 2), _),
                    trie_put_entry(A, f(1, 2, [1]), _),
                    trie_tree(A, T),
                    trie_close(A).

trie_mix(T) :- trie_open(A),
               trie_put_entry(A, f(1, [2]), _),
               trie_put_entry(A, [2, 3, [4, 5]], _),
               trie_put_entry(A, f([1, 2], [3, 4]), _),
               trie_put_entry(A, [2, p(2, 3), 2.4], _),
               trie_tree(A, T),
               trie_close(A).
