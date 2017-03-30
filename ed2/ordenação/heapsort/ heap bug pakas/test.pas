{
UNIVERSIDADE FEDERAL FLUMINENSE/ INFES
Aluno: Victor Tadeu Silva de Oliveira
Curso: Computação
Disciplina: Estrutura de Dados II
Prof.: Rodrigo Erthal

TRABALHO 5

complexidade pior caso: O(n)*log(n)
complexidade melhor caso: O(n)*log(n)
}


program HeapSort;

uses crt;

const
  MAX = 10;

Type

  TChave = integer;

  TVet = array [1..MAX] of TItem;  {Vetor que contém registros de inteiros}



var
     A: TVet;
    Op: char;
   Fim: boolean;


procedure Parada;
  {Procedimento feito para manter as informação na tela
  Logo após executado irá apagar o que está na tela.}
var Tecla: char;
begin
	writeln;
  writeln('Pressione algo !');
  Tecla := readkey;
end;


procedure Criar(var vetor: TVet);
  {bloco para preenchimento altomático do vetor}
var
  i: TIndice;
begin
  randomize;
  for i := 1 to n do vetor[i].Chave := random(50);
  writeln('Criacao Concluida !');
  Parada;
end;


procedure Troca(var x, y: TItem);
  {bloco responsável por fazer a troca para a ordenação do vetor}
var Aux: TItem;
begin
  Aux := x;
    x := y;
    y := Aux;
end;

procedure HeapSort(var A: TVet);
var
  Esq, Dir: TIndice;

  procedure Refaz(Esq, Dir : TIndice; var A: TVet);
   {bloco para reconstruir a estrutura de ordenação}
  var i, j : integer;
         x : TItem;
  begin
    i := Esq; j := 2 * i;
    x := A[i];
    while j <= Dir do {}
    begin
      if   (j < Dir) and (A[j].Chave < A[j + 1].Chave) then
        {valor esquerdo menor que direito e o 1 valor menor que o segundo valor}
        j := j + 1; {inclementa a posição}
      if   x.Chave >= A[j].Chave then
        break;
      A[i] := A[j];
      i := j; j := 2 * i;
    end;
    A[i] := x;
  end;

begin
  writeln('Aguarde... Ordenando !');
  {Construindo a minha Heap}
  Esq := (n div 2) + 1;
  Dir := n;
  while Esq > 1 do
  begin
    Esq := Esq - 1;
    Refaz(Esq, Dir, A);
  end;
  {Ordenando o Vetor}
  while Dir > 1 do
  begin
    troca(A[1], A[Dir]);
    Dir := Dir - 1;
    Refaz(Esq, Dir, A);
  end;
  writeln('Atencao... Ordenacao Concluida !');
  Parada;
end;

procedure exibir(vetor: TVet);
  {bloco que exibi os elementos na tela de forma bonitinha}
var
  Nl, Nc: byte;
  i: TIndice;
begin
  clrscr;
  writeln('Elementos:');
  Nl := 1;
  Nc := 1;
  for i := 1 to n do
  begin
    gotoxy(Nc, Nl);
    write(I:5,'- ',vetor[i].Chave:5);
    Nl := Nl + 1;
    if   Nl = 22 then
      begin
        Nl := 1;
        Nc := Nc + 15;
        if   Nc > 65 then
          begin
            Parada;
            clrscr;
            writeln('Elementos:');
            Nc := 1;
          end;
      end;
  end;
  Parada;
end;


function Finalizar : boolean;
  {bloco para parar sair do programa}
var
  Conf : char;
begin
  write('Confirma a Finalizacao do sistema:[s/n]');
  repeat
    Conf := readkey;
  until Conf in ['S','s','N','n'];
  write(Conf);
  Finalizar := Conf in ['S','s'];
end;


begin { Corpo Principal }
  Fim := false;
  repeat
    clrscr;
    writeln('===== MENU =====');
    writeln('1 - Criar Elementos');
    writeln('2 - HeapSort');
    writeln('3 - Exibe Elementos');
    writeln('4 - Fim');
    writeln('Opcao Desejada: ');

    repeat
      Op := readkey;
    until Op in ['1'..'2','3','4'];
    write(Op);
    case Op of
      '1' : Criar(A);
      '2' : HeapSort(A);
      '3' : Exibir(A);
      '4' : Fim := Finalizar;
    end;
  until Fim;
end.
