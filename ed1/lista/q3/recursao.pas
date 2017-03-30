{3) Faça um programa que leia números reais de um arquivo tipadoe os
exiba na tela do computador na ordem oposta à qual aparecem no arquivo.}

program q3;

type
	Tarq = file of integer;
	Tvetor = array[1..25] of integer;

var
	arq : Tarq;
	vetor : Tvetor;
	i : integer;
	arq_txt : text;
	dado : integer;

procedure exibir(i:integer);
begin
	assign(arq,'arq.dat');
	reset(arq); 
		if i < filesize(arq)-1 then
			exibir(i+1);
		seek(arq,i);
		read(arq, dado);
		writeln(dado);
end;

begin
	exibir(0);
	close(arq);
end.
 
