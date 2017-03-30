{faça um programa q receba o preço do produto
e mostre o valor de venda. sabe-se q o preço
de custo receberá um acrescimo de acordo com 
um percentual informado pelo usuario}

program tabela_vendas;

var 
	preco_produto : real;
	valor_venda : real;
	acrescimo : real;

begin
	writeln('');
	writeln('');
	writeln('');

	writeln('Informe o valor do produto');
	readln(preco_produto);

	writeln('Informe o acrescimo');
	readln(acrescimo);

	valor_venda := (preco_produto + acrescimo);

	writeln('O Valor do preco de venda:',valor_venda:2:2);

writeln('');
writeln('');
writeln('');
end.