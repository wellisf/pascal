program exe9;

var
	vet: array[1..10] of integer;
	con: integer;

begin
	for con:=1 to 10 do
	 begin
		vet[con] := con + 4;
	end;
	
	for con:=1 to 3 do
	 begin
		vet[con*2] := con;
	end;
	
	for con:=1 to 10 do
	 begin
		writeln(con,':', vet[con]);
	end;
end.