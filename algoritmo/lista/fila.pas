program lifo;

const 
	MAX = 5;

type
	Tvetor = array[1..MAX] of integer;

var
	pilha : Tvetor;
	condicao : char;
	valor, pos : integer;

begin
	pos := 0;
	inicio := 1
	repeat
		writeln('Deseja : [I]nformar, [R]etirar ou [S]air, um numero');
		readln(condicao);
			case condicao  of 
				'I','i':begin
					writeln('Valor');
					readln(valor);
					pos := pos + 1;
					pilha[pos] := valor;
				end;

				'R','r':begin
				if(inicio<=pos) then
					writeln('Valor retirado =',pilha[inicio]);
					inicio := inicio + 1;
				end;
			end;
	until (condicao = 's') or (condicao = 'S');
end.
