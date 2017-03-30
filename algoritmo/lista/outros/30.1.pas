program media_de_alunos;

const
	MAX = 9; 
var
	nota : array[0..MAX] of integer;
	nome : array[0..MAX] of string[30];
	cont,aprovado : integer;

begin
	writeln(' ');
	writeln(' ');
	cont := 0;
	while(cont <= 2) do
	begin
		writeln('Informa o nome do aluno');
		readln(nome[cont]);
		writeln('Informa a nota');
		readln(nota[cont]);
		writeln(' ');
		cont := cont + 1;
	end;

	writeln('Os alunos aprovados');
	for cont:= 0 to 2 do
	begin
		if(nota[cont] >= 60) then 					
		begin
			write(nome[cont],'		A nota:');
			write('			',nota[cont]);
			writeln(' ');							/
		end;
	end;
	writeln(cont);


end.
