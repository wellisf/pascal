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

program H34p;

const
  MAX = 10;


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

procedure display(vector: Tvector);
var
  i: integer;
begin
  for i := 0 to max do writeln(vector[i]);
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
    if (children < last and vector[children] < vector[children+1]) then children:= children+1;
    //idenficar o maior valor do  vector[ first ... MAX]
    if (auxiliary >= vector[children]) then break;
    //pai recebe filho maior que ele, sube.
    vector[first] := vector [children];
    first := children;
    // atualiza o children
    children := 2*p;
  end;
  vector[first] := auxiliary;
end;

//programa
begin
  auto(vector);
  display(vector);
end.
