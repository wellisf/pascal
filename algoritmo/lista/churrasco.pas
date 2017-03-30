program calc_churrasco;

var
	crianca_paga : char;
	homens, mulheres, criancas, pessoas : integer;
	cerveja : integer;
	carne_consumida, valor_carne, gasto_carne, valor_individual_carne : real;

begin
	writeln('Quantos homens irao?');
	readln(homens);
	writeln('Quantas mulheres irao?');
	readln(mulheres);
	writeln('Quantas criancas irao?');
	readln(criancas);

	pessoas := (homens + mulheres + criancas);
	//carne_consumida := (homens*300 + mulheres*200 + criancas*100);
	carne_consumida := (homens * 0.3 + mulheres * 0.2 + criancas * 0.1);
	
	writeln('Informe o valor da carne');
	readln(valor_carne);
	gasto_carne := (valor_carne * carne_consumida);
	writeln(' ');
	writeln('Sera necessario comprar ',carne_consumida :1:3,' Kg de carne');
	writeln('O valor gasto na carne e: R$',gasto_carne :2:2);
	
	writeln('Crianca paga?(S/N)');
	readln(crianca_paga);
		if(crianca_paga = 's') then valor_individual_carne := gasto_carne/pessoas else
		valor_individual_carne := gasto_carne/(homens + mulheres);
	
	writeln('O valor que deve se pago individual na carne R$',valor_individual_carne :2:2);

	{writeln('Quantos consumem bebidas alcoolicas');
	readln(cerveja);}
end.