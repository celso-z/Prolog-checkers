:- [utils]. %Ferramentas para ajudar na programação lógica


tabuleiro_vazio([[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' '],
	[' ',' ',' ',' ',' ',' ',' ',' ']]).

write_board([Linha1,Linha2,Linha3,Linha4,Linha5,Linha6,Linha7,Linha8]):-
	write("8 "),write(Linha8),nl,
	write("7 "),write(Linha7),nl,
	write("6 "),write(Linha6),nl,
	write("5 "),write(Linha5),nl,
	write("4 "),write(Linha4),nl,
	write("3 "),write(Linha3),nl,
	write("2 "),write(Linha2),nl,
	write("1 "),write(Linha1),nl,
	write("   a b c d e f g h"),nl,nl.

%Peça = [dama , [x , y]]
colocar_peca(1, Tabuleiro, [1 , [X | [Y|_]]], T2) :-
	nth1(Y, Tabuleiro, Linha),
	replace(Linha,X,'O',NovaLinha),
	replace(Tabuleiro,Y,NovaLinha,T2).	

colocar_peca(1, Tabuleiro, [0 , [X | [Y|_]]], T2) :-
	nth1(Y, Tabuleiro, Linha),
	replace(Linha,X,'o',NovaLinha),
	replace(Tabuleiro,Y,NovaLinha,T2).

colocar_peca(2, Tabuleiro, [1 , [X | [Y|_]]], T2) :-
	nth1(Y, Tabuleiro, Linha),
	replace(Linha,X,'X',NovaLinha),
	replace(Tabuleiro,Y,NovaLinha,T2).	

colocar_peca(2, Tabuleiro, [0 , [X | [Y|_]]], T2) :-
	nth1(Y, Tabuleiro, Linha),
	replace(Linha,X,'x',NovaLinha),
	replace(Tabuleiro,Y,NovaLinha,T2).	

colocar_pecas(Jogador, Tabuleiro, [], Tabuleiro).
colocar_pecas(Jogador, Tabuleiro, [Peca | Pecas], T2) :-
	colocar_peca(Jogador, Tabuleiro, Peca, T1),
	colocar_pecas(Jogador, T1, Pecas, T2).
