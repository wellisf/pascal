//data:15/04/15

program tipo_triangulo;

var 
	a, b, c : integer;

begin
 writeln('Informe o lado A');
 read(a);
 writeln('Informe o lado B');
 read(b);
 writeln('Informe o lado C');
 read(c);
 //condição para ver se e triangulo de fato
 if ((a+b)>c) and ((b+c)>a) and ((c+a)>b) then begin
 	if(a=b) and (b=c) then  writeln('E um triangulo equilatero') else
 	if(a=b) or (b=c) or (a=c) then writeln('E um triangulo Isoscele') else writeln('E um triangulo Escaleno');
 end;

end.