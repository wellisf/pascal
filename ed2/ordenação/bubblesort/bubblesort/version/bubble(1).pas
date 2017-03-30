program bubble;

type
	Tdado = integer;
	Tarq = file of Tdado;

var
	arq : Tarq;

procedure bubbleSort(var arq: Tarq);
var
	temp : Tdado;
	i,j : integer;	
	aux1, aux: integer;

begin
	assign(arq,'arq.dat');
	reset(arq);// reset(arq)
		for j:=0 to filesize(arq)-1 do // j := filesize(arq) - 1 downto 1 
		begin
			for i:=0 to filesize(arq)-2 do// i := 1 to j
				begin
					seek(arq,i);
					read(arq,aux);
					seek(arq,i+1);// não  precisa, pois a leitura anterior já faz o ponteito de arquivo ir para o próximo registro.
					read(arq,aux1);
					if( aux > aux1) then
					begin
						//temp := aux; // não precisa
						//aux := aux1;// não precisa
						seek(arq,i+1); 
						write(arq,aux);// basta escrever aux1
						//aux1 := temp; // nao precisa
						seek(arq,i);// nao precisa
						write(arq, aux1);// basta escrever aux
					end;
			end;	
		end;					
	close(arq);
end;

procedure lerArq(var arq: Tarq);
var
	j : integer;
	aux : integer;
begin
	assign(arq,'arq.dat');
	reset(arq);
	for j:=1 to filesize(arq) do
		begin
			read(arq,aux);
			writeln(aux);
		end;
		writeln;
	close(arq);
end;

begin
	lerArq(arq);
	bubbleSort(arq);
	lerArq(arq);
end.
