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

program HeapSort;

const
  MAX = 10;

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
  	vetor[i]:=random(150);
  end;
end;

//programa
begin
  auto(vetor);
end.
