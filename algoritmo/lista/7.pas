{7-tabuada}

program tabuada123;

const 
	MAX = 10;

var
	numero : integer;
	cont : integer;

begin
	writeln('Informe um numero');
	readln(numero);

	for cont := 1 to MAX do 
	 	writeln(numero,' x ',cont,' = ',(numero*cont));
end.