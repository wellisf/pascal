//faça um programa q solicite ao
//usuario o raio de uma circunferencia
//informando em seguida a area da msm.

program questao1;

var
	area : real;
	pi : real;
	raio : real;
begin
	pi := 3.1416;
	writeln('Informe o raio');
	readln(raio);
	area := pi*(raio*raio);
	writeln('A area:',area:3:2);
end.
