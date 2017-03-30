{ escrever um algoritmo que leia o nome de um vendedor,
o seu salario fixo, e o total de vendas efetuadas por ele no mes.
sabendo  q este vendedor ganha 15% de comissão sobre suas vendas efetuadas,
informar o seu nome, salario fixo e salario do final mes}

program venda;

var
		nome_vendedor : string;
		salario_fixo : integer;
		total_vendas : real;
		soma : real;
		cont, numero_vendedor : integer;

begin
	writeln('');
	writeln('');
	writeln('');

cont := 0;
while(cont < 3) do
begin
	writeln('Informe o nome do vendedor');
	readln(nome_vendedor);

	writeln('Informe o salario fixo');
	readln(salario_fixo);

	writeln('Informe o total de vendas em reais');
	readln(total_vendas);

	writeln('');

	soma := ((total_vendas * 0.15) + salario_fixo);

	writeln('O vendedor: ' ,nome_vendedor);
	writeln('Recebe: R$' ,soma:3:2);
        writeln('');
        writeln('');
cont := cont + 1;
end;

	writeln('');
	writeln('');
	writeln('');
end.
