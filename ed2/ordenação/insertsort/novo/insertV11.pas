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
type 
	Tdado = integer;
	
	Tarquivo = text; 
 
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
	assign(fileExit, 'exit.txt');
	rewrite(fileExit);
	aux := lista;
		while(aux <> nil) do
		begin
			writeln(fileExit, aux^.dado);
			aux := aux^.proximo;
		end; 
		writeln;
		writeln('	Arquivo salvo e ordenado com sucesso.	');
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
			new(temp);	//faz a inserção na primeira posição
			temp^.dado := valor;
			temp^.proximo := lista;
			lista := temp;
		end else
		begin
			if lista^.proximo = NIL then
			begin
				//faz a inserção
				new(temp);///
				temp^.dado := valor;////
				lista^.proximo := temp;
			end else
			begin
				if valor < lista^.proximo^.dado then
				begin
					//faz a inserção entre os dois blocos de alocação
					new(temp);
					temp^.dado := valor;
					temp^.proximo := lista^.proximo;
					lista^.proximo := temp;
				end else
				begin
					ordenacao(lista^.proximo, valor);
				end;
			end;
		end;
	end;
end;

procedure main(var lista : Tlista);
var
	aux : Tlista;
	valor : Tdado;
	fileInput : Tarquivo;
	fileExit : Tarquivo;
	 
begin 
	assign(fileInput, 'input.txt');
	{$i-}	// desativa o erro, não acusa o erro
	reset(fileInput);
	{$i+}
		if ioresult <> 0 then writeln('	Error 404. 		<<<  Not File >>>'); 
		while not(EOF(fileInput))do
		begin
			readln(fileInput, valor);
			ordenacao(lista, valor);
		end;
		save(lista);
	close(fileInput);
end;

begin
	main(lista);
end.
