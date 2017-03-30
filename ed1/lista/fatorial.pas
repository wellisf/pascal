program fatorial;

var
	n : integer;

function fatorial(n : integer) : longint;
begin
if n > 1 then 
	fatorial := fatorial(n-1) * n
else fatorial := 1 ;
	
end;

begin
	writeln( 'Informe o numero fatorial');
	readln(n);
	writeln('Fatorial e: ', fatorial(n));
end.
