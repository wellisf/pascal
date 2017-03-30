program bubble;

type
	Tdado = integer;
	Tarq = file of Tdado;

var
	arq : Tarq;

procedure bubbleSort(var arq: Tarq);
var
	i,j : integer;	
	aux1, aux: integer;

begin
	assign(arq,'arq.dat');
	reset(arq);
		for j:=1 to filesize(arq)-1 do // j := filesize(arq) - 1 to 1 
		begin
			for i:=1 to	filesize(arq) do// i := 1 to j
				begin
					seek(arq,i);
					read(arq,aux);
					read(arq,aux1);
					if( aux > aux1) then
					begin
						seek(arq,i); 
						write(arq,aux);
						write(arq, aux1);
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
	close(arq);
end;

begin
	lerArq(arq);
	bubbleSort(arq);
	lerArq(arq);
end.
