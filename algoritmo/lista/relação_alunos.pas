{ faça um programa que leia a matricula a nota da p1, p2 de 20 alunos.
apos essas leituras o programa deve  preencher a nota final de cada um dos aluno da seguinte forma
linha A se o aluno tiver media abaixo 4>nota, sua nota sera a media das duas provas, nesse caso o aluno esta reprovado
linha B o aluno com nota=>4 and nota<6 devera ter a nota informada pelo usuario - VS
linha C o aluno com nota=>6 esta aprovado com media das duas provas
ao final o programa deve exibir a matricula as notas e a situação de cada aluno.}


program academico;

uses crt;

const
	MAX = 3;

type
	Tmatricula = array[1..MAX] of integer;
	Tvetor = array[1..MAX] of real;

	Tint = integer;
	
	Tcadastro = record
		matricula : Tmatricula;
		p1 : Tvetor;
		p2 : Tvetor;
		vs : Tvetor;
		media : Tvetor;
		final : Tvetor;
	end;

var
	aluno : Tcadastro;
	cont  : Tint;


begin
	clrscr;
	for cont := 1 to MAX do
	 begin
		writeln('Informe a matricula');
		readln(aluno.matricula[cont]);
		writeln('Informe a P1');
		readln(aluno.p1[cont]);
		writeln('Informe a P2');
		readln(aluno.p2[cont]);
		aluno.media[cont] := (aluno.p1[cont] + aluno.p2[cont])/2;
			if(aluno.media[cont] < 60) and (aluno.media[cont] > 40) then
			 begin
			 	writeln('Informe a nota da VS');
			 	readln(aluno.vs[cont]);
			 	aluno.final[cont] := aluno.vs[cont];
			end;
		if(aluno.media[cont] >= 60) then aluno.final[cont] := aluno.media[cont];
		clrscr;
	end;
	clrscr;
	writeln('Alunos Aprovados :');
	
	for cont := 1 to MAX do
	 begin
	 	if(aluno.final[cont] >= 60) then
	 	 begin
	 		write(aluno.matricula[cont]);
	 		write('			media: ',aluno.final[cont]:1:0);
	 		writeln(' ');
	 		writeln(' ');
	 	end;
	end;

	writeln('Alunos Reprovados :');
	for cont := 1 to MAX do
	 begin
	 	if(aluno.final[cont] < 60) then
	 	 begin
	 		write(aluno.matricula[cont]);
	 		write('			media: ',aluno.final[cont]:1:0);
	 		writeln(' ');
	 		writeln(' ');
	 	end;
	end;

end.