program exe_pilha;
//resolvendo problema de pilha

const 
	MAX = 3;

type 
	Tvetor = array[1..MAX] of integer;

var 
	pilha : Tvetor;
	condicao : char;
	posicao, valor : integer;

begin
	posicao := 0;
	repeat
		writeln('Deseja [I]nforma , [R]etirar ou [S]air ?');
		readln(condicao);

			case condicao of
				'I','i' : begin 
					writeln('Valor ');
					readln(valor);
						if(pos>MAX) then 
							writeln('OverFlow') else
						begin
							posicao := posicao + 1;
							pilha[posicao] := valor;
						end;
				end;
	
				'r','R' : begin
					if(pos<1) then writeln('UnderFlow') else
					begin
						writeln(pilha[posicao]);
						posicao := posicao - 1; 
					end;
				end;
			end;
	until(condicao = 's') or (condicao = 'S');
end.