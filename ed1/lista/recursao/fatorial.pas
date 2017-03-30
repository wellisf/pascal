program fatorial;

var
	n : integer;

function fatorial(n:integer): integer;
begin
	if n > 1 then
		fatorial := fatorial(n-1) * n
	else fatorial := 1;
end;
begin
	writeln('informe um n fatorial');
	readln(n);
	writeln('O numero fatorial e: ', fatorial(n));
end.
