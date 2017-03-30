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
	reset(arq);
		for j:=0 to filesize(arq)-1 do
		begin
			for i:=0 to filesize(arq)-2 do
				begin
					seek(arq,i);
					read(arq,aux);
					seek(arq,i+1);
					read(arq,aux1);
					if( aux > aux1) then
					begin
						temp := aux;
						aux := aux1;
						aux1 := temp; 
						
						seek(arq,i);
						write(arq,aux);
						seek(arq,i+1);
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
		writeln;
	close(arq);
end;

begin
	lerArq(arq);
	bubbleSort(arq);
	lerArq(arq);
end.

