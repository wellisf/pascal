program teste_de_idade_sexo;

var

	sexo : char;
	idade : integer;

begin
        writeln('');
        writeln('');
	writeln('Informe a idade');
	readln(idade);

	writeln('Informe o sexo');
	readln(sexo);

        writeln('');
        writeln('');

        if(idade < 18) then writeln('Pode') else
        begin
                if(idade>=21)then writeln('Nao pode') else

                       begin
                       if(sexo='f') then writeln('Pode') else
                                begin
                                writeln( 'Nao pode')
                                end;
        				end;

        end;
        
		  writeln('');
        writeln('');


end.
