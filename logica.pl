init_jogador1([[0, [1,1]],[0, [3,1]], [0, [5,1]], [0, [7,1]],
	[0, [2,2]], [0, [4,2]], [0, [6,2]], [0, [8,2]],
	[0, [1,3]], [0, [3,3]], [0, [5,3]], [0, [7,3]]]).

init_jogador2([[0, [2,8]],[0, [4,8]], [0, [6,8]], [0, [8,8]],
	[0, [1,7]], [0, [3,7]], [0, [5,7]], [0, [7,7]],
	[0, [2,6]], [0, [4,6]], [0, [6,6]], [0, [8,6]]]).

isOccupied([X,Y], Player_pieces) :- member([_, [X,Y]], Player_pieces).

get_piece_at_position(Position, [], Piece).
get_piece_at_position(Position, [[Dama , Position] | Rest], [Dama | [Position]]).
get_piece_at_position(Position, [_ | Rest], Piece) :- get_piece_at_position(Position, Rest, Piece).





/*movimentar([X,Y], Player1_pieces, Player2_pieces) :-
	( not(isOccupied())
	;
	)*/
	
