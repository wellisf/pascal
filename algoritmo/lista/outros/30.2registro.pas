program media_de_alunos;

uses crt;

const
	MAX = 3; 

type
	Tnota = Real;
	Tresultados = array [1..MAX] of Tnota;
	Talunos = array [1..MAX] of string[30];
	Tcadastro = record 
		aluno : Talunos;
		nota : Tresultados;
	end;
var
	//resultado : Tresultados;
	//nota : array[0..MAX] of integer;
	//aluno : Talunos;
	//nome : array[0..MAX] of string[30]; mesma coisa so que usa type   
	cont : integer;
	cadastro : Tcadastro;
begin
	writeln(' ');
	writeln(' ');
	cont := 1; 
	while(cont <= MAX) do
	begin
		writeln('Informa o nome do aluno'); // falta pedi o nome, so esta funcionando a nota
		readln(cadastro.aluno[cont]);
		writeln('Informa a nota');
		readln(cadastro.nota[cont]);
		writeln(' ');
		cont := cont + 1;
	end;

	writeln('Os alunos aprovados');
	for cont:= 1 to MAX do
	begin
		if(cadastro.nota[cont] >= 60) then 					
		begin
			writeln('O Aluno  ',cadastro.aluno[cont] ,'		Tirou:', cadastro.nota[cont]:0:0 );
			writeln(' ');				
		end;
	end;
	//writeln(cont);


end.
