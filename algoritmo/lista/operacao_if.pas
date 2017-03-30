{faça uma programa que peça ao usuario que
escolha uma operação matematica (+ ;- ; / ; *)
bem como DOIS valores inteiros .
Em seguida o programa deve exibir o resultado,
ultilizando valores informados.}

program operacao;

var
	operacao_matematica : char;
	num1, num2 : integer;

begin
	writeln('');
    writeln('');

    writeln('Infome um numero');
    readln(num1);
    writeln('Infome outro numero');
    readln(num2);

    writeln('Infome a operacao desejada (S p/ - , M p/ *, D para / , A p/ + )');
    readln(operacao_matematica);

    writeln(' '); 

    if(operacao_matematica = 's') then writeln ('O Resultado da Subtracao: ',num1-num2,'');
    if(operacao_matematica = 'm') then writeln ('O Resultado da Multiplicacao: ',num1*num2,'');
    if(operacao_matematica = 'd') then writeln ('O Resultado da Divisão: ',num1/num2,'');
    if(operacao_matematica = 'a') then writeln ('O Resultado da Soma: ',num1+num2,'');

	writeln(' ');
	writeln(' ');

end.



