// fazer o numeros somarem

program c15a35;

procedure contador;
	
	var
		i,f : integer;
		soma : integer;

	begin
		soma := 0;
		writeln('Informe o valor inicial');
		readln(i);
		writeln('Informe o valor final');
		readln(f);
		writeln('*********************');
		
		while(i <= f) do
		 begin
			writeln(i);
			soma := soma + i;
			i := i + 1;
		
		end;
		writeln('*********************');
		writeln('A soma de todos os numeros = ', soma);
end;

begin
	contador;
end.
