//o usuario deve adivinha um numero. 

program questao4;

var
	numero : integer;

begin
	numero := 3;
	while(numero<>21) do
	 begin
		writeln('Informe um numero');
		readln(numero);
		if(numero>21) then writeln('Informe um numero menor');
		if(numero<21) then writeln('Infome um numero maior');
		writeln('__________________________________________-');
	end;
	writeln('Parabens!!');
end.