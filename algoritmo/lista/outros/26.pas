program Salario_professor;

var 
	nivel, horas_trabalhadas : integer;

begin
	writeln('Informe quantas horas/aulas foram realizadas');
	readln(horas_trabalhadas);
	writeln('Informe o nivel do professor');
	readln(nivel);

	if(nivel = 1) then writeln('R$',horas_trabalhadas*12);
	if(nivel = 2) then writeln('R$',horas_trabalhadas*17);
	if(nivel = 3) then writeln('R$',horas_trabalhadas*25);
end.

