:- [tabuleiro].
:- [logica].

ler_comando(coordenadas(X,Y),Jogador_vez):-
	repeat,
	% write("Your move: <"),write(Color),write("> "),
	write("Digite sua jogada: "),
	%read(Input),
	read_string(user_input, '\n', '\r', _, Input),
	(
	  	Input = "sair", halt
	;
		split_string(Input, "(", "", [Comando | [Resto|_]]),
		(
			(Comando \= "mv",Comando \= "cap"),
			write("Comando Inválido!"), nl,
		   	ler_comando(coordenadas(X,Y))
		;
			( 
				Comando = "mv",
				split_string(Resto, ")", "", [Coor | _]),
				split_string(Coor, ",", "", [Atual | [Prox|_]]),
				string_position_to_coord(Atual, Pos1),
				string_position_to_coord(Prox,Pos2),
				get_piece_at_position(Prox, Jogador_vez, Y),
				%movimentar(Comando, Coor)
				write(Y)
			;
				write(coordenadas)
				/*Cap aqui*/
			)
			
	   	)
	).


gameLoop(Y) :-
	tabuleiro_vazio(Tabuleiro),
	init_jogador1(J1),
	init_jogador2(J2),
	
	colocar_pecas(1, Tabuleiro,  J1, T2),
	colocar_pecas(2, T2,  J2, Y),
	write_board(Y).

