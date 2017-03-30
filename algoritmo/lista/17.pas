{17-Faça um programa que realize as seguintes operações em
um vetor de inteiros de 10 posições.
a) Preencha as posições com os valores decrescentes de 70 á 61.
b) Faça cada posição do vetor receber o conteúdo da posição
seguinte (exceto a última posição, que manterá seu valor
inalterado).
c) Exiba na tela o conteúdo do vetor, da segunda à penúltima
posição.
Obs. 1: Utilize procedimentos e funções quando for possível.}

program aldlasdk;

const
	MAX = 10;
	FINAL = 61;

type
	Tvetor = array[1..MAX] of integer;

var 
	vetor : Tvetor;

procedure decrescente(var vetor:Tvetor);
	var
		cont, posicao : integer;

	begin
		posicao := 1;
		for cont := 70 downto FINAL  do
		 begin
		 	vetor[posicao] := cont;
		 //	writeln(vetor[posicao]);
		 	posicao := posicao + 1; 
		end;
	end;


{b) Faça cada posição do vetor receber o conteúdo da posição
seguinte (exceto a última posição, que manterá seu valor
inalterado).}

procedure recebe(var vetor:Tvetor);
	var
		posicao : integer;
		aux : Tvetor;

	begin
		for posicao := 1 to MAX do
			aux[posicao] := vetor[posicao+1];

		for posicao := 1 to MAX do
			vetor[posicao] := aux[posicao];
	end;


procedure exibir_b(var vetor:Tvetor);
	var
		posicao : integer;

	begin
		writeln(' ');
		writeln(' B ');
		for	posicao := 1 to MAX-1 do
			writeln(vetor[posicao]);
	end;

procedure exibir_c(var vetor:Tvetor);
	var
		posicao : integer;

	begin
		writeln(' ');
		writeln(' C ');
		for	posicao := 2 to MAX-1 do
			writeln(vetor[posicao]);
	end;


begin
	decrescente(vetor);
	recebe(vetor);
	exibir_b(vetor);
	exibir_c(vetor);
end.