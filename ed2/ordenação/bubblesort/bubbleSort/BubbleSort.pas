program bubblesortbeta;

uses crt;

const
	MAX = 3;

type
	Tvetor = array[1..MAX] of integer;
var
	num : Tvetor;

procedure numeros(num : Tvetor );
	var
		cont : integer;
	begin
		for cont := 1 to MAX do 
		begin
			writeln('Informe um numero');
			readln(num[cont]);
			writeln('_____________________________');
			writeln(' ');
		end;
	end;

procedure ordenacao();
	begin

	end;

begin
	numeros(num);
end.
