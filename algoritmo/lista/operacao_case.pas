{faça uma programa que peça ao usuario que
escolha uma operação matematica (+ ;- ; / ; *)
bem como DOIS valores inteiros .
Em seguida o programa deve exibir o resultado,
ultilizando valores informados.}

program operacao;

var
	operacao_matematica : char;
	num1, num2 : integer;
	res : real;

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

	case operacao_matematica of
		'a' : res := num + num2;
		'm' : res := num * num2;
		'd' : res := num / num2;
		's' : res := num - num2;
		end;

		writeln('Resultado = ', res:2:2);
		// linha 35 res:2:2 ???
		end.
