{
Criado em 1964 por Robert W. Floyd e J.W.J. Williams.
Seu desempenho não foi melhor em nenhum teste;
• O seu comportamento foi o mesmo para todos os tipos de vetores;
• Em arquivos aleatórios de grande tamanho o seu desempenho foi similar
ao ShellSort;
* Complexidade O(n log n).
Para implementar
HeapSort são necesária apenas duas operações com o heap :
  > Remake, que refaz a estrutura e
  > Build que a constroi
}

//bug no heap e no heapSort.

program H34p;

const
  MAX = 11;

type
  Tgiven  = integer;
  Tvector = array[1..MAX] of Tgiven;

var
  vector : Tvector;

procedure auto(var vector:Tvector);
var
  i : integer;
begin
  for i := 1 to MAX do
  begin
  	vector[i]:=random(150);
  end;
end;

procedure manual(var vector:Tvector);
var
  i : integer;
begin
  	vector[1]:= 11;
  	vector[2]:= 10;
  	vector[3]:= 7;
  	vector[4]:= 9;
  	vector[5]:= 5;
  	vector[6]:= 6;
    vector[7]:= 4;
    vector[8]:= 8;
    vector[9]:= 2;
    vector[10]:= 3;
    vector[11] := 1;
end;

procedure display(vector: Tvector);
var
  i: integer;
begin
	writeln;
  for i := 1 to MAX do write(vector[i],' | ');
  writeln;
end;

procedure heap(var vector : Tvector; first : integer; last : integer);
var
  auxiliary : integer;
  children : integer;

begin
  children := first*2;
  auxiliary := vector[first];
  while ( children <= last) do
  begin
    //verifica o fim do vetor.
    if ((children < last) and (vector[children] < vector[children+1])) then children:= children+1;
    //idenficar o maior valor do  vector[ first ... MAX]
    if (auxiliary >= vector[children]) then break;
    //pai recebe filho maior que ele, sube.
    vector[first] := vector [children];
    first := children;
    // atualiza o children
    children := 2*first;
  end;
  vector[first] := auxiliary;
end;

// Em construção
procedure heapSort(var vector : Tvector; last : integer);
var
  first : integer;
  x : integer;
  half, auxiliaryLast : integer;
begin
  //transforma o HEAP  em um vetor ordenado
  for auxiliaryLast := MAX downto 2 do
  begin
    x := vector[1];
    vector[1] := vector[auxiliaryLast];
    vector[auxiliaryLast] := x;
    heap(vector, 1, MAX-1);
  end;
end;

//programa
begin
  manual(vector);
  writeln('->	Vector Original');
  display(vector);
  heapSort(vector, 1);
  writeln;
  writeln('->	Vector Original');
  display(vector);
end.
