program	shellsort;

const
  MAX = 10;

type
	Tdado = integer;

	Tvetor = array[1..MAX] of Tdado;

var
	vetor : Tvetor;
	contador : longint;

procedure interacoes(contador : longint);
var
	arq : text;
begin
	assign(arq, 'interacao.text');
	append(arq);
		writeln(arq, contador);
	close(arq);
end;

procedure auto(var vetor:Tvetor);
var
	i : integer;
begin
	for i := 1 to MAX do
	begin
		vetor[i]:=random(1500);
	end;
end;

procedure exibir(vetor: Tvetor);
var
	i : integer;
begin
	writeln;
	write(' | ');
	for i:=1 to MAX do
	begin
		write(vetor[i]);
		write(' | ');
	end;
	writeln;
end;

function knuth():integer;
var
	h: integer;

begin
	h := 1;
	while(h < MAX)do h := 3*h+1;
  //writeln(h);
  knuth := h;
end;

procedure shell(var contador : longint; var vetor:Tvetor);
var
  gap : integer;
  temp : integer;
  pos : integer;

begin
  gap := knuth();
  writeln('gap >>>>>');
  writeln(gap);
  repeat
    gap := gap div 3;
    writeln;
    writeln('gap >>>>>');
		writeln(gap);
    for pos := (gap+1) to MAX do
    begin
			//writeln(gap);
			writeln('pos - gap');
			write(pos);
			write('  - ');
			write(pos-gap);
			writeln;
      if vetor[pos] < vetor[pos-gap] then
      begin
        contador := contador + 1;
        temp := vetor[pos];
        vetor[pos] := vetor[pos-gap];
        vetor[pos-gap]:= temp;
      end;
    end;
  until(gap=1);
  interacoes(contador);
end;

//programa
begin
	auto(vetor);
  exibir(vetor);
  shell(contador, vetor);
  exibir(vetor);
end.
