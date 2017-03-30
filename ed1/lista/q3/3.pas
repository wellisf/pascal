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
	dado : string;

begin
	assign(arq,'arq.dat');
	reset(arq);
	for i := 0 to 25 do 
		read(arq,vetor[i]);
	close(arq);
	
	assign(arq_txt,'arqui.text');
	rewrite(arq_txt);
	for i:= 25 downto 0 do 
		writeln(vetor[i]);
		dado := 's';
		readln(arq_txt,dado);
	close(arq_txt);
	
	for i:= 25 downto 0 do 
		writeln(vetor[i]);
 end.
 
