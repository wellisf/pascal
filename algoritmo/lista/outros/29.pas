program juros_deposito;

var
	deposito, total, soma : real;
	taxa_juros,valor_juros,porcentagem : real;
	cont : integer;
begin
	writeln('Informe o valor depositado');
	readln(deposito);
	writeln('Informe a taxa de juros');
	readln(porcentagem);
	taxa_juros := (porcentagem/100);
	writeln('Informe quantos meses de aplicacao');
	readln(cont);
	writeln(' ');
	for cont:= 1 to cont do	
	begin
		valor_juros := (deposito*taxa_juros);
		//writeln('R$',valor_juros:3:2);
		total := (valor_juros + deposito);
		//writeln('R$',total:3:2);
		soma := (total + soma);
	end;
	writeln(' ');
	writeln('R$',soma:3:2);	
end.