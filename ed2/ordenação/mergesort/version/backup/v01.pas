program mergeSort;

{
* dividir o vetor recusivamente
* dividir todos os lados
* na hr que chega apenas um elemento
* chama o merge juntando cada pedaço do vetor
* }

const
  MAX = 6;

type
	Tdado = integer;

	Tvetor = array[1..MAX] of Tdado;

var
	vetor : Tvetor;
	
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

procedure dividir(var vetor : Tvetor; inicio:integer; fim:integer);
var 
	meio : integer;
begin
	meio := (inicio+fim) div 2;
	//merge
	write('merge');
	writeln;
	writeln(inicio);
	writeln(fim);
	if (inicio <> fim) then
	begin
		//esquerda
		dividir(vetor, inicio, meio);
		//direita
		dividir(vetor, meio+1, fim);
	end;
end;
  
begin	
	auto(vetor);
	exibir(vetor);
	dividir(vetor, 1, MAX);
	exibir(vetor);
end.
