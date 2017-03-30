program	shellsort;

//Wellington de Souza Silva



//Tabela dos metodos e suas interações:
{
Interações com o metodo convencional(gap começando com a metade do vetor)
vetor[10.000] = 1.080.069 interações
vetor[1.000]  = 0.034.651 interações
Vetor[100]    = 0.000.525 interações
Vetor[10]     = 0.000.007 interações

Interações com o metodo convencional(gap começando com o tamanho do vetor)
vetor[10.000] = 2.146.238 interações
vetor[1.000]  = 0.069.074 interações
Vetor[100]    = 0.000.924 interações
Vetor[10]     = 0.000.013 interações

Interações com o metodo Knuth(gap*3+1)
vetor[10.000] = 0.144.339 interações
vetor[1.000]  = 0.008.722 interações
Vetor[100]    = 0.000.453 interações
Vetor[10]     = 0.000.013 interações
}







{
* Como escolher valores para h?
Existem vários modos de escolher valores para h baseados em estudos de eficiência,
você pode até escolher os valores que quiser, apesar de ser altamente não recomendável por questões de eficiência.
O método de seleção de valores para h proposto por Donald Shell foi h = n/2 onde n é o número de elementos do vetor,
mas já foi provado que sua eficiência é baixa. O que vimos hoje foi o da sequência de Donald Knuth, explicado como:
h = 3*h+1	E a sequência gerada: 1, 4, 13, 40, 121, 364, 1093, 3280…

Partindo de h = 1[*] precisamos do maior valor possível que seja menor que o número de elementos no vetor, então basta calcular:
h1 = 3*1+1 = 4
h2 = 3*4+1 = 13
h 3 = 3*13+1 = 40
* etc...
Para decrementar os  valores de h até h=1 podemos usar a fórmula inversa:
h = (h-1)/3
…3280, 1093, 364, 121, 40, 13, 4, 1.
* }

const
	MAX = 10000;

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

procedure preencher(var vetor : Tvetor);
begin
	vetor[1] := 4;
	vetor[2] := 3;
	vetor[3] := 15;
	vetor[4] := 7;
	vetor[5] :=	10;
	vetor[6] :=	13;
	vetor[7] :=	8;
	vetor[8] :=	9;
	vetor[9] :=	2;
	vetor[10] := 6;
end;

procedure manual(var vetor:Tvetor);
var
	i : integer;
begin
	for i := 1 to MAX do
	begin
		vetor[i]:=random(1500);
	end;
end;

{
	* gap intuitivo = tamanho do vetor
	* gap tradicional(Donald Shell) =  sizeVetor/2
	* gap melhorado(Donald Knuth) = 3*gap+1;
	* 	Exemplo de sequência ruim: 1, 2, 4, 8, 16,
}

function knuth():integer;
var
	h: integer;
begin
	h := 1;
	while(h < MAX)do h := 3*h+1;
  //writeln(h);
  knuth := h;
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

//com deslocamento
procedure shell_knuth(var contador : longint; var vetor:Tvetor);
var
	h : integer;
	i,j : integer;
	temp : integer;
begin
	h:= knuth();
	repeat
		begin
			h:=(h-1) div 3;

			for i := h+1 to MAX do
			begin
				temp := vetor[i];
				j := i-h;
				while((j>=1) and (temp < vetor[j])) do
				begin
					vetor[j+h] := vetor[j];
					j:=j-h;
					contador := contador + 1;
				end;
				vetor[j+h] := temp;
			end;
		end;
	until(h<1);
	interacoes(contador);
end;

procedure shell(var contador : longint; var vetor:Tvetor);
var
	gap : integer;
	h : integer;
	i : integer;
	temp :integer;
begin
	//gap := MAX;	 	//nao indicado, porem intuitivo
	gap := (MAX div 2); //gap de shell

	while h>1 do
	begin
		for i := 1 to MAX-h+1 do
		begin
			if vetor[h+i-1] < vetor[i] then
			begin
				contador := contador + 1;
				temp := vetor[i];
				vetor[i] := vetor[h+i-1];
				vetor[h+i-1] := temp;
			end;
			//exibir(vetor);
		end;
		h := h -1; //gap tradicional
	end;
	interacoes(contador);
end;

begin
	manual(vetor);
	exibir(vetor);
	//shell(contador, vetor);
	shell_knuth(contador, vetor);
	exibir(vetor);
end.
