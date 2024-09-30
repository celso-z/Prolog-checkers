replace([_|T], 1, X, [X|T]).
replace([H|T], I, X, [H|R]):- I > 1, NI is I-1, replace(T, NI, X, R), !.
replace(L, _, _, L).
