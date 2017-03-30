program media_de_alunos;

var
	nota : array[1..90] of integer;
	nome : array[1..90] of string[30];
	alunos, cont, aprovado : integer;
	frequencia : array[1..100] of integer;
begin
	writeln(' ');
	writeln(' ');
	cont := 1;
	writeln('Informe a quantidade de alunos');
 	readln(alunos);
	for cont:=1 to alunos do
	begin
		writeln('Informa o nome do aluno');
		readln(nome[cont]);
		writeln('Informa a nota');
		readln(nota[cont]);
		writeln('Informe a frequencia');
		readln(frequencia[cont]);
		writeln(' ');
		
	end;

	writeln('Os alunos aprovados');
	for cont:= 1 to alunos do
	begin
		if(nota[cont] >= 60) and (frequencia[cont]>= 75) then writeln('O Aluno ',nome[cont],'  foi aprovados		A nota: ',nota[cont],		'A frequencia  ',frequencia[cont]) else			
		 if(nota[cont]>=40) and (frequencia[cont]>=80) then writeln('O Aluno ',nome[cont], '  esta na Final	A nota: ',nota[cont],'     A frequencia  ',frequencia[cont]) else
		  if(nota[cont]>=60) and (frequencia[cont]<74) then writeln('O Aluno ',nome[cont], ' perdeu por faltas	A nota: ',nota[cont],'       A frequencia  ',frequencia[cont]) else writeln('O Aluno foi reprovado');
	 	writeln(' ');
	end;
	//writeln(cont);


end.
