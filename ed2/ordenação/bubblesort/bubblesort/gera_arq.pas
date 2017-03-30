{1) Construa um programa em pascal que leia 25 números inteiros de um arquivo 
e os armazene em uma matriz 5x5 (preencha primeiros as linhas depois as colunas)
“MAT[linha,coluna]”, em seguida o programa deve exibir na tela a posição do maior número.}

program q1;

type
	Tarq = file of integer;

procedure gera_arquivo;
var
	arq : Tarq;
begin
	assign(arq,'arq.dat');
	rewrite(arq);
	write(arq, 30);
	write(arq, 3);
	write(arq, 13);
	write(arq, 130);
	write(arq, 310);
	write(arq, 302);
	write(arq, 350);
	write(arq, 10);
	write(arq, 5);
	write(arq, 50);
	write(arq, 70);
	write(arq, 73);
	write(arq, 230);
	write(arq, 134);
	write(arq, 1);
	write(arq, 4);
	write(arq, 14);
	write(arq, 341);
	write(arq, 57);
	write(arq, 51);
	write(arq, 678);
	write(arq, 6);
	write(arq, 8);
	write(arq, 58);
	write(arq, 86);
	write(arq, 98);
	close(arq);
	Writeln('	Arquivo Gerado Com Sucesso!	');
end;

begin
	gera_arquivo;
end.
