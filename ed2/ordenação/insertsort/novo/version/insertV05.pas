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
 
	Tlista = ^Telemento;  

	Telemento = record
					dado : Tdado;
					proximo : Tlista;
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
			
			if (lista = nil) then
			begin
				new(lista);
				lista^.dado := valor;
			end else
			begin
				while lista^.proximo <> nil do
				begin
					lista := lista^.proximo; 
					
					new(aux);
					aux^.dado := valor;
					lista^.proximo := aux;
				end;
			end;
		end;
		
		//save(lista);
		
		writeln;
		writeln('	Primeira etapa Com Sucesso	');
	close(fileInput);
end;

procedure exibir(var lista:Tlista);
var
       aux:Tlista;    // variavel criada para receber a lista
begin
       aux:= lista;
       while aux <> nil do  // enquando aux for diferente de vazio
         begin
           writeln(aux^.dado);   // imprimi na tela a informaÃ§Ã£o para onde aux aponta.
           aux:=aux^.proximo; // aux vai recer o proximo da lista
         end;
       readkey;
end;

begin
	main(lista);
	exibir(lista);
end.

