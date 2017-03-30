{1) Construa um programa em pascal que leia 25 números inteiros de um arquivo 
e os armazene em uma matriz 5x5 (preencha primeiros as linhas depois as colunas)
“MAT[linha,coluna]”, em seguida o programa deve exibir na tela a posição do maior número.}

program q1;

type
	Tarq = file of integer;
	Tmatriz = array [1..5,1..5] of integer;
	
var
	matriz : Tmatriz;
	i,j : integer;
	pos_i, pos_j, maior : integer;
	arq : Tarq;
	arquivo : text;

begin
	maior:= 0;
	assign(arq,'arq.dat');
	reset(arq);
		for i := 1 to 5 do
		begin
			for j := 1 to 5 do
			begin
				read(arq, matriz[i,j]);
				//writeln(matriz[i,j]);
				if matriz[i,j] > maior then
				begin
					maior := matriz[i,j];
					pos_i := i;
					pos_j := j;
				end;
			end;
		end;
	close(arq);
	writeln('O endereco do maior numero: [',pos_i,',',pos_j,']');
	//writeln(maior);
	assign(arquivo, 'arquivo.txt');
	rewrite(arquivo);
	write(arquivo, 'O endereco do maior numero: [',pos_i,',',pos_j,']');
	close(arquivo);
end.

