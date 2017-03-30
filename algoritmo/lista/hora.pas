//construa um programa , que de acordo com a hora informada o procedimento deve apresenta uma das msg: "BD, BT, BN"

program hora_dia_procedimento;

var	
	hora : integer;

procedure hora_dia(h : integer);

	begin
		
		
		case h of
			0 ..  11: writeln('Bom dia!');
			12 .. 17: writeln('Bom tarde!');
			18 .. 23: writeln('Bom noite!');
		end;
	end;

begin
	writeln('Informe a hora');
	readln(hora);
	hora_dia(hora);
end.

