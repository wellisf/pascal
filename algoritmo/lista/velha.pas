program jogo_velha;

const
	MAX = 3;

type
	Tmatriz = array[1..MAX,1..MAX] of integer;

var
	velha : Tmatriz;
	cont : integer;

procedure tabuleiro;
	var
		i, j : integer;
		posicao : integer;

	begin
		for i := 1 to MAX do
			 begin
				for j := 1 to MAX do
				writeln('   |   |	');
				writeln('---+---+---');
		end; 
	end;

procedure exibir(velha:Tmatriz);
	var
		i, j : integer;
		posicao : integer;

 begin
	for i := 1 to MAX do
	 begin
		for j := 1 to MAX do
			write(velha[i,j],'  |  ');

		writeln('      	');
		writeln('   |     |     |');
		writeln('---+-----+-----|');
		
	end;
end;

//function gameover(velha:Tmatriz):boolen;
	//var over :

procedure recolher(var velha:Tmatriz);
	var
		i, j : integer;
		posicao : integer;	
	
	begin
		for posicao := 1 to 9 do
		 begin
			writeln('Informe a linha de 1 a 3');
			readln(i);
			writeln('Informe a coluna de 1 a 3');
			readln(j);
			writeln('___________________');
			writeln('Informe [',i,',',j, ']	 : 1 ou 2');
			readln(velha[i,j]);
			writeln(' ');
			exibir(velha);
			writeln(' ');
		end;
end;

begin
	tabuleiro;
	recolher(velha);

end.