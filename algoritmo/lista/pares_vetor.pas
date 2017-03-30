//A, B : array[1..10] of integer;
program iniciador_vetor;

var
	n : array[1..9] of integer;
	cont : integer;

begin
	cont := 0;
	while(cont < 5) do
	begin
	writeln('Informe um numero');
	readln(n[cont]);
	cont := cont + 1;
	end;
	writeln('o numero', n[2]:3);
end.