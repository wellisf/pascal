program bubblesortbeta;

uses crt;

const
	MAX = 3;

var
	num : array[1..MAX] of integer;
	cont, cont2, aux : integer;

begin
	for cont := 1 to MAX do 
	begin
		writeln('Informe um numero');
		readln(num[cont]);
		writeln('_____________________________');
		writeln(' ');
	end;

	for cont:= MAX downto 1 do 
	begin
		for cont2:=1 to cont-1 do
		 begin
		 	if(num[cont2] > num[cont2+1]) then	
		 	begin
		 		aux := num[cont2];
		 		num[cont2] := num[cont2+1];
		 		num[cont2+1] := aux;
		 	end;
		end;
	end;

	for cont:= 1 to MAX do writeln(num[cont]);

end.