//pergunta o sexo de 20 pessoas e dizer qual e a maioria

program questao5;

var
	sexo : char;
	pessoas, cont : integer;
	masculino, feminino : integer;
begin
	pessoas := 20;
	masculino := 0;
	feminino := 0;
	while(pessoas>cont) do
	 begin
		writeln('Informe o sexo');
		readln(sexo);
		if(sexo = 'm') then masculino := masculino + 1;
		if(sexo = 'f') then feminino  := feminino + 1;
        cont := cont + 1;
	end;
	if(masculino>feminino) then writeln('A maioria e homem');
	if(feminino>masculino) then writeln('A maioria e mulher');
	if(masculino=feminino) then writeln('Ambos tem o mesmo numero');
end.
