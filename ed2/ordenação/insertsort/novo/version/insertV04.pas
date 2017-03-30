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

type 
	Tdado = integer;
	
	Tarquivo = text; 
 
	//Input = 'input.txt';
 
	Tlista = ^Telemento;  

	Telemento = record
					dado : Tdado;
					proximo, anterior : Tlista;
				end;

var
	lista : Tlista;

procedure save(lista:Tlista);
var
	fileExit : Tarquivo;
	aux : Tlista;
	
begin
	writeln('	Segunda etapa Com Sucesso	');
	assign(fileExit, 'exit.txt');
	rewrite(fileExit);
	aux := lista;
		while(aux <> nil) do
		begin
			writeln(fileExit, aux^.dado);
			writeln(aux^.dado);
			aux := aux^.proximo;
			writeln('	Terceira etapa Com Sucesso	');
		end; 
	close(fileExit);
end;
	
procedure main(var lista:Tlista);
var
	aux : Tlista;
	valor : Tdado;
	fileInput : Tarquivo;
	
begin
	assign(fileInput, 'input.text');
	
	{$i-}	// desativa o erro, não acusa o erro
	reset(fileInput);
	lista := nil;
	{$i+}
		
		if ioresult <> 0 then writeln('	Error 404. 		<<<  Not File >>>'); 
		
		while not(EOF(fileInput))do
		begin
			readln(fileInput, valor);
			//writeln(dado);
			
			if (lista = nil) then
			begin
				new(lista);
				lista^.dado := valor;
			end else
			begin
				new(aux);
				aux^.dado := valor;
				lista := aux;
			end;
		end;
		
		save(lista);
		
		writeln;
		writeln('	Primeira etapa Com Sucesso	');
	close(fileInput);
end;

begin
	main(lista);
end.
