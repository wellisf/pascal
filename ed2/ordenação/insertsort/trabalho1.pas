program insert_sort;

{
valor: 2
dia 06/05

ler numeros de um arquivo texto de inteiros, ordena-los por metados de inserção, utilizando lista encadeada
e salvar em um novo arquivo tipado(texto).
}

uses crt;

const
	MAX = 5;

type 
	Dado = integer;
	
	File_txt = text;
	
	Vector = array[1..MAX] of Dado;
	
procedure openFile();
var
	fileInput : File_txt;
	number : Vector;
	pos : integer; 
	minor : integer;
	
begin
	clrscr;
	pos := 1;
	minor := 99;
	assign(fileInput, 'e.txt');
	reset(fileInput);
	{
	*  rotular um tamanho max para o arquivo,
	*  metodos - fazer eof retorna um valor inteiro. 
	* 		Pesquisar se tem como fazer
	* 
	}
		while not eof(fileInput) do 
		begin
			read(fileInput, number[pos]);
			writeln(number[pos]);
			pos := pos + 1; 
		end;
	close(fileInput);
	
	readkey;
end;

procedure insertSort();
begin
	writeln(pos);
// ordenar aki dentro, com o vetor.
end; 

begin
	openFile();
	insertSort();
end.	
