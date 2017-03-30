
program media_combustivel_automovel;

var
	distancia, combustivel_gasto, combustivel : real;
	media_gasto, gasto_combustivel : real;

begin
 writeln(' ');
 writeln(' ');
 writeln('Informa a distancia em Km');
 readln(distancia);
 writeln('Informe a quantidade de combustivel gasto');
 readln(combustivel_gasto);
 writeln('Informe o preco do combustivel utilizado');
 readln(combustivel);

 media_gasto := (distancia/combustivel_gasto);
 gasto_combustivel := (media_gasto*combustivel);
 writeln('O carro faz em media: ',media_gasto:2:1,'Km/L');
 writeln('Foi gasto com o combistivel: R$',gasto_combustivel:2:2);
 writeln(' ');
 writeln(' ');
end.

