{Faça um programa que declare um vetor de 20 posições.
Inicialmente o programa deverá preencher todas as posições com
o valor 1, em seguida deverá ser apresentado ao usuário um menu
onde ele poderá:
a) alterar um valor específico (escolhido pelo usuário).
b) exibir um valor específico (escolhido pelo usuário).
c) exibir todos os valores do vetor.
d) exibir apenas os valores maiores que 6.
e) exibir a média dos valores do vetor.
Obs. 1 : O menu será exibido repetidas vezes, até que o usuário
devida pela finalização do
programa}

program menu123;

const
	MAX = 5;

type
	Tvetor = array[1..MAX] of integer;

var 
	vetor : Tvetor;
	menu : integer;

procedure adicionar(var vetor:Tvetor);
	var
		cont : integer;

	begin
		for cont := 1 to MAX do vetor[cont] := 1;
	end;

procedure menu_principal(var vetor:Tvetor ;var menu:integer);
	var 
		cont : integer;
		soma : integer;
		media : real;

	begin
		repeat
			writeln(' ');
			writeln('_________________________________');
			writeln(' ');
			writeln(' ');
			writeln('1) alterar um valor específico (escolhido pelo usuário).');
			writeln('2) exibir um valor específico (escolhido pelo usuário).');
			writeln('3) exibir todos os valores do vetor.');
			writeln('4) exibir apenas os valores maiores que 6.');
			writeln('5) exibir a média dos valores do vetor.');
			writeln('0) Sair.');
			writeln(' ');
			writeln('_________________________________');
			writeln(' ');
			readln(menu);
			writeln(' ');
			writeln('_________________________________');
			writeln(' ');

			case menu of
				1 :	
					begin
						writeln('Informe uma posicao');
						readln(cont);
						writeln('Informe o novo valor');
						readln(vetor[cont]);
					end;

				2 :
					begin
						writeln('Informe a posicao');
						readln(cont);
						writeln(vetor[cont]);
					end;	

				3 : for cont := 1 to MAX do writeln(vetor[cont]);

				4 : 
					begin
						for cont := 1 to MAX do 
							if(vetor[cont] > 6 ) then writeln(vetor[cont]);
					end;
				5 :
					begin
						for cont := 1 to MAX do soma := vetor[cont] + soma;
						writeln(soma);
						media := soma/MAX;	
						writeln(media:0:2); 
					end;
			end;
		until(menu = 0);
	end;

begin
	adicionar(vetor);
	menu_principal(vetor, menu);
end.