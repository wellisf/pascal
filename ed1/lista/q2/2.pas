{E armazene os dados em um novo arquivo tipado
*  capaz de guardar registros com Nome, Idade e Sexo.}

program q2;

const
	MAX = 10;

type
	Tvetor = array[1..MAX] of string;
	Tpessoa = record
				nome : string[12];	
				idade : integer;
				sexo : char
	        end;
	
	Tarq = file of Tvetor;
	        
var
	arq_t : Tarq;
	arq : text;
	dados_vetor : Tvetor;
	dado : string;
	i : integer;
	
begin
	i := 1;
	assign(arq,'arquivo.txt');
	reset(arq);
		while not EOF(arq) do 
		begin
			readln(arq,dado);			
			dados_vetor[i]:=dado;
			i:=i+1;
		end;
		writeln('Arquivo Copiado para o Vetor');
	close(arq);

	assign(arq_t,'arq.dat');
	rewrite(arq_t);
	for i:= 1 to MAX do
		write(arq_t,dados_vetor[i]);
		
	close(arq_t);
end.
