{Faça um programa que leia a nota mínima de aprovação e o
número máximo de faltas, em seguida o programa deve ler e
armazenar a matrícula, o número de faltas, e as notas de duas
avaliações de cada um dos alunos
12_lista dos reprovados por falta.
13_lista dos reprovados por nota.}

program academico;

uses crt;

const
	MAX = 3;

type
	Tnome = string;
	
	Tcadastro = record
		nome : Tnome;
		matricula : integer;
		p1, p2: integer;
		faltas, total_aulas : integer;
		frequencia : integer;
		media : real;
	end;

	Tformulario = array[1..MAX] of Tcadastro;

var
	aluno : Tformulario;

procedure leitura(var aluno:Tformulario);
	var 
		cont : integer;

	begin
		for	cont :=1 to MAX do
		 begin
			writeln('Informe a matricula');
			readln(aluno[cont].matricula);
			writeln('Informe o nome do aluno');
			readln(aluno[cont].nome);
			writeln('Informe a p1');
			readln(aluno[cont].p1);
			writeln('Informe a p2');
			readln(aluno[cont].p2);
			writeln('Informe a frequencia');
			readln(aluno[cont].frequencia);
			aluno[cont].media := ((aluno[cont].p1) + (aluno[cont].p2))/2; 	
			writeln('____________________________________________');
			clrscr;
		end;
	end;
	
		
procedure aprovados(aluno:Tformulario);
	var
		cont : integer;

	begin
		writeln(' ');
		writeln('---------->->->->->  Aprovados  <-<-<-<-<-<-----------');
		writeln(' ');
			
		for cont:= 1 to MAX do
 			if (aluno[cont].media >= 60) and (aluno[cont].frequencia >= 80) then writeln(aluno[cont].nome);

	 		writeln(' ');
	 	 	writeln('______________________________________________________________________');
	 	 	writeln(' ');
	 end;
        
procedure reprovados (aluno:Tformulario);
	var
		cont : integer;

	begin
		writeln(' ');
		writeln('-----------------  Reprovados  ---------------------');
		writeln(' ');
				
		for cont:= 1 to MAX do
 			if (aluno[cont].media < 40) or (aluno[cont].frequencia < 80) then writeln(aluno[cont].nome);
				

		writeln(' ');
 	 	writeln('______________________________________________________________________');
 	 	writeln(' ');
		 end;

procedure vs (aluno:Tformulario);
	var
		cont : integer;

begin
	writeln(' ');
	writeln('-------|-|-|	VS	|-|-|------------');
	writeln(' ');
				
	for cont:= 1 to MAX do
		if (aluno[cont].media <= 40) and (aluno[cont].media > 60) or (aluno[cont].frequencia < 80) then writeln(aluno[cont].nome);
				

				writeln(' ');
		 	 	writeln('______________________________________________________________________');
		 	 	writeln(' ');
		 end;

begin
	leitura(aluno);
	aprovados(aluno);
	reprovados(aluno);
	vs(aluno);
	clrscr;
end.