{10-Faça um programa que leia o nome e a nota de 30 alunos
(armazenando os mesmos em vetores) em seguida (após a leitura
dos valores) o programa deve exibir a lista com o nome dos
aprovados. (nota mínima de 6 para aprovação).}

program listagem_de_alunos;

const
	MAX = 3;

type
	Tnome  =  string;
	
	Tcadastro = record
		nome : Tnome;
		nota, matricula : integer;
	end;
	
	Taluno = array[1..MAX] of Tcadastro;
	

	

var 
	aluno : Taluno;

procedure principal(var aluno:Taluno);
	var
		cont : integer;

	begin
		for cont:= 1 to MAX do
		 begin
		 	writeln('Informe a matricula');
		 	readln(aluno[cont].matricula);
		 	writeln('Informe o nome do aluno');
		 	readln(aluno[cont].nome);
		 	writeln('Informe a nota');
		 	readln(aluno[cont].nota);
		 	writeln(' ');
		end;
end;

procedure aprovados(aluno:Taluno);
	var
		cont : integer;

	begin
		writeln(' ');
		writeln('Alunos aprovados!');
		for cont:= 1 to MAX do
		 	if(aluno[cont].nota >= 60) then writeln(aluno[cont].nome);
	end;
begin
	principal(aluno);
	aprovados(aluno);
end.