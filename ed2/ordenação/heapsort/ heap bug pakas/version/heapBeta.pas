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
  for i := 1 to max do writeln(vector[i]);
end;

//procedure heap(vetor : Tvetor);
//programa
begin
  auto(vector);
  display(vector);
end.
