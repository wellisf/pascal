program insert_sort;

{
valor: 2
dia 06/05

Version: 0.5

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
	valor : Tdado;

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
	
procedure ordenacao(var lista : Tlista; valor : Tdado); 
var
	aux, temp : Tlista;
	
begin
	if lista=nil then// serve apenas para criar o primeiro elemento caso não existe algum...
	begin
		new(lista);
		lista^.dado := valor;
	end 
	else
	begin
		if valor < lista^.dado then
		begin
			//faz a inserção 
		end
		else
		begin
			if lista^.proximo = NIL then
			begin
				//faz a inserção
				new(temp);///
				temp^.dado := valor;////
				/// lista^.proximo := temp;
			end
			else
			begin
				ordenacao(lista^.proximo, valor);
			end
		end
		{aux := lista;
		if aux^.dado > valor then
		begin
			new(temp);
			temp^.dado := valor;
			
			temp^.anterior := aux^.anterior^.proximo;// aux^.anterior;
			temp^.proximo := aux^.proximo;
			aux^.anterior:= temp;
			aux^.anterior^.proximo := temp
			
			//inserir o elemento do maior e menor.
			//acerta ponteiro
		end else
		begin
			ordenacao(lista^.proximo, valor);
		end; }
	end;
end;

procedure main(var lista : Tlista);
var
	aux : Tlista;
	valor : Tdado;
	fileInput : Tarquivo;
	fileExit : Tarquivo;
	 
begin
	//Associações 
	assign(fileInput, 'input.text');
	
	{$i-}	// desativa o erro, não acusa o erro
	reset(fileInput);
	{$i+}
		
		if ioresult <> 0 then writeln('	Error 404. 		<<<  Not File >>>'); 
		
		while not(EOF(fileInput))do
		begin
			readln(fileInput, valor);
			writeln(valor);
			
			ordenacao(lista, valor);
	
		end;
		save(lista);
	close(fileInput);
end;

begin
	main(lista);
end.
