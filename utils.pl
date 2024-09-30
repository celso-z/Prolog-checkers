replace([_|T], 1, X, [X|T]).
replace([H|T], I, X, [H|R]):- I > 1, NI is I-1, replace(T, NI, X, R), !.
replace(L, _, _, L).

char_to_coord(1, 'a').
char_to_coord(2, 'b').
char_to_coord(3, 'c').
char_to_coord(4, 'd').
char_to_coord(5, 'e').
char_to_coord(6, 'f').
char_to_coord(7, 'g').
char_to_coord(8, 'h').


string_position_to_coord(Str, [X | Y]) :-
	string_chars(Str, [Col|Lin]),
	char_to_coord(X, Col),
	number_string(Y, Lin).
