program media_de_alunos;

var
	nota,cont : integer;

begin
	writeln(' ');
	writeln(' ');
	cont := 0;
	while(cont < 3) do
	begin
		writeln('Informa uma nota');
		readln(nota);
		writeln(' ');

		if(nota >= 60) then writeln('Aprovado')else writeln('Reprovado');
		writeln(' ');
		cont := cont + 1;
	end;

	
	writeln(' ');
	writeln(' ');
end.
