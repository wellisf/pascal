program teste_de_idade_sexo;

var
	nome : string;
	sexo : char;
	idade : integer;
	pessoas : integer;
	cont : integer;

begin
 writeln('');
 writeln('');
cont := 0;

writeln('Informe quantas pessoas se alistaram');
readln(pessoas);
writeln(' ');
writeln(' ');

 while(pessoas > 0) do
 begin
	writeln('Informe o nome');
	readln(nome);
 	
 	writeln('Informe a idade');
 	readln(idade);

 	writeln('Informe o sexo');
 	readln(sexo);

 	writeln('');
 	writeln('');

 	if (idade >= 60) then writeln('Nao pode') else
    if (idade < 18) then writeln('Nao Pode') else
    if (sexo = 'f') then writeln (' Nao pode') else
    if (idade >= 18) then 
		begin 
		writeln('Pode');
	 	cont := cont + 1;
		end;
    writeln('');
   pessoas := (pessoas - 1);
 end;

writeln('Estao habitos a servir: ',cont);

writeln('');
writeln('');

end.
