//ler "n" numeros inteiros e
// exiba na tela o maior dos numeros informados

program questao3;

var
	numero, qtd_numero : integer;
	cont, maior : integer;

begin
	writeln('Informe a quantidade de numeros');
	readln(qtd_numero);
	cont := 0;
	maior := -1000;
	while(qtd_numero > cont) do
	 begin
		writeln('Informe um numero');
		readln(numero);
		if(numero>maior) then  maior := numero;
		cont := cont + 1;
	end;

	if (cont > 1) then writeln('O maior numero:',maior);	
end.	 