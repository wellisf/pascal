{3) Faça um programa que leia números reais de um arquivo tipado e os
exiba na tela do computador na ordem oposta à qual aparecem no arquivo.}

program recursivo;

type
	Tarq = file of integer;
	
var
	arq : Tarq;
	dado, i : integer;

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
