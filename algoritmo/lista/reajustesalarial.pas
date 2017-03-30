{faça um programa que leia,
um valor do salario minimo,
e os salarios de 30(valor definidade p/ Const) funcionarios.
Apos a leitura dos salarios, pergunte ao usuario um valor
de ajusto salarial, que deve se aplicado a todos os funcionarios,
sendo que nem um salario pode ser inferior ao salario minimo.
por fim exiba na tela os novos salarios.}

program ajuste_salario;


uses crt;

const
	salario_minimo = 800;
	max = 3;
type
	Tvetor = array[1..MAX] of real;
var
	salario, novo_salario : Tvetor;
	reajuste : real;
	cont : integer;

begin
	clrscr;
	writeln('Informe o valor do reajuste');
	readln(reajuste);
	
	for cont := 1 to MAX do
	 begin
	 	writeln('Informe o salario');
	 	readln(salario[cont]);
	 	novo_salario[cont] := salario[cont] + (reajuste);
	end;

	for cont:=1 to MAX do 
	 	writeln(novo_salario[cont]:4:2);

end.	

