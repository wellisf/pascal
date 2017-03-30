program matricula_alunos;

var
	nome : string;
	nota : integer;
	faltas, aulas : integer;
	frequencia : real;
	alunos, cont : integer; 
begin
 writeln('Informe a quantidade de alunos');
 readln(alunos);
 while(alunos>cont) do
 begin	
	writeln('Informe o nome');
	readln(nome);
	writeln('Informe a nota');
	readln(nota);
	writeln('Informe o numero de faltas');
	readln(faltas);
	writeln('Informe o numero de aulas realizadas');
	readln(aulas);
	frequencia := ((aulas-faltas)/aulas)*100;
	writeln(frequencia:2:0,'%');

	if(nota>=60) and (frequencia>=75) then writeln('O Aluno foi aprovado') else
	if(nota>=40) and (frequencia>=80) then writeln('O Aluno esta na Final') else 
	if(nota>=60) and (frequencia<74) then writeln('O Aluno perdeu por faltas') else writeln('O Aluno foi reprovado');
 
 	cont:= (cont + 1);
 end;

end.
