:- [tabuleiro].
:- [logica].

ler_comando(coordenadas(X,Y)):-
	repeat,
	% write("Your move: <"),write(Color),write("> "),
	write("Digite sua jogada: "),
	%read(Input),
	read_string(user_input, '\n', '\r', _, Input),
	(
	  	Input = "sair", halt
	;
		split_string(Input, "(", "", [Comando | Resto]),
		(
			(Comando \= "mv",Comando \= "cap"),
			write("Comando Inválido!"), nl,
		   	ler_comando(coordenadas(X,Y))
		;
			( 
				Comando = "mv",
				split_string(Resto, ",", "", Coor),
				Movimentar(Comando, Coor)
			;
				/*Cap aqui*/
			)
			
			write(Resto)
	   	)
	).


gameLoop(Y) :-
	tabuleiro_vazio(Tabuleiro),
	init_jogador1(J1),
	init_jogador2(J2),
	
	colocar_pecas(1, Tabuleiro,  J1, T2),
	colocar_pecas(2, T2,  J2, Y),
	write_board(Y).

