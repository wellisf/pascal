program selection_sort;

uses crt;

const
	MAX = 5;

type 
	Dado = integer;
	
	File_txt = text;
	
	Vector = array[1..MAX] of Dado;

var 
	number : Vector; 
	
procedure preencher(var number : Vector);
var 
	i : integer;
begin
	for i := 1 to MAX do 
	begin
		writeln('informe o numero');
		readln(number[i]);
	end;
	readkey;
end;

procedure selectionSort(var number : Vector);
var 
	i, j : integer; 
	menor : integer;
	temp : integer;
begin
	i := 2;
	// pensar em metodo de ordenar ele, pegando o maior e colocando na ultima posição.
	{
		http://pascal-programming.info/articles/sorting.php
		http://www.ft.unicamp.br/liag/siteEd/implementacao/insertion-sort.php
		https://www.vivaolinux.com.br/script/Ordenar-vetor-com-algoritmo-Insertion-Sort/
	}
	
	// ideia
	{
		for i := 2 to MAX do
		begin
			if menor > n[i] then
			begin
				menor := n[i];
				endereco := i;
			end;
		end;
	}
	
	for j :=  1 to MAX-1 do
	begin
		menor := number[j];
		while i<MAX do // duvida no i<max
		begin
			if number[menor] > number[i] then
			begin
				menor := number[i]];
				{
				menor := number[i];
				endereco := i;
				
				}
			end;
			if j <> menor then 
			begin
				temp := number[j];
				number[j] := number[menor];
				number[menor] := temp;
			end;
			i := j+1
		end;
	end;
	readkey;
end;

procedure exibir(number : vector);
var
	i : integer;
	
begin
	for i := 1 to MAX  do 
	begin
		writeln(number[i]);
	end; 
	readkey;
end;

begin
	clrscr;
	preencher(number);
	clrscr;
	selectionSort(number);
	clrscr;
	exibir(number);
end.	

