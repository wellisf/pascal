program conta_luz;

var
	tipo_conta : string;
	qnt_kwh : integer;

begin
	writeln('Informe a quantidade kw/h gasta');
	readln(qnt_kwh);
	writeln('Informe o tipo da conta de luz');
	readln(tipo_conta);
	writeln(' ');
	if(tipo_conta = 'residencial')or(tipo_conta = 'r') then writeln('R$',qnt_kwh*0.6:3:2);
	if(tipo_conta = 'comercio')or(tipo_conta = 'c') then writeln('R$',qnt_kwh*0.48:3:2);
	if(tipo_conta = 'industria')or(tipo_conta = 'i')  then writeln('R$',qnt_kwh*1.29:3:2);
    writeln(' ');
end.
