{ ler 10 nomes,
 e criar um opção para consultar o nome através do vetor}


program consulta_nomes;

uses crt;
 
const 
	MAX = 3;

type
	Tnomes = array[1..MAX] of string[20];

var
	nome : Tnomes;

procedure recolher(var nome:Tnomes);
	var
		cont : integer;

	begin
		for cont:=1 to MAX do
		 begin
		 	writeln('Informe o nome');
		 	readln(nome[cont]);
		 	writeln(' ');
		 	writeln('Seu id e: ',cont);
		 	writeln(' ');
		end;
		clrscr;
	end;

procedure consultar(nome:Tnomes);
	var
		cont : integer;

	begin
		repeat
			writeln('Informe o id, caso quera sair digite 0');
			readln(cont);
			writeln(nome[cont]);
			writeln(' ');
			writeln('___________________________');
			writeln(' ');
		until(cont = 0);
	end;

begin
	recolher(nome);
	consultar(nome);
end.
