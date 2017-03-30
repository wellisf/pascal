program insert_sort;

{
valor: 2
dia 06/05

Nome: Wellington De Souza Silva

Método : Insert Sort

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
 
	Lista = ^Telemento;  

	Telemento = record
					dado : Dado;
					prox, anterior : Lista;
				end;

procedure openFile();
var
	lst, aux, temp : Lista;
	fileInput, fileExit : File_txt;
	valor : Dado;

begin
	assign(fileInput, 'e.txt');
	reset(fileInput);
		while not eof(fileInput) do 
		begin
			read(fileInput, valor);
			if (lst <> nil) then
			begin
				aux := lst;
				if valor > aux^.dado then 
				begin 
					while (aux^.prox <> nil) and (valor > aux^.prox^.dado) do aux := aux^.prox;
					new(temp);
					temp^.dado := valor;
					temp^.prox := aux^.prox;
					temp^.anterior := aux;
					if (temp^.prox <> nil) then 
					begin
						temp^.prox^.anterior := temp;
						aux^.prox := temp;
					end else
					begin
						while(aux^.anterior <> nil) and (valor < aux^.anterior^.dado) do aux := aux^.anterior;
						new(temp);
						temp^.dado := valor;
						temp^.prox := aux;
						temp^.anterior := aux^.anterior;
						if (temp^.anterior <> nil) then temp^.anterior^.prox := temp;
						aux^.anterior := temp;
					end;
				end;
			end else
				begin
					new(lst);
					lst^.dado := valor;
					lst^.prox := nil;
					lst^.anterior := nil;
				end;
		end;
			while (aux^.anterior <> nil) do aux := aux^.anterior;
			lst := aux;		
		
		
	assign(fileExit, 's.txt');
	rewrite(fileExit);
		aux := lst;
		while (aux <> nil) do 
		begin
			writeln(fileExit, aux^.dado);
			aux := aux^.prox;
		end;
	close(fileExit);
	close(fileInput);
	readkey;
end;

begin
	openFile();
end.	
