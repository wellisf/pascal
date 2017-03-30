// ler 30 numeros e soma-los

program somador;

var
	cont, soma, num, maior, menor : integer;
    media : real;

begin
writeln(' ');
writeln(' ');
writeln(' ');
cont := 0;
soma := 0;
menor := 9999;
	while (cont < 3 ) do
		begin
		writeln('informe um numero');
		readln(num);
		soma := soma + num;
		if(maior < num)then	maior := num;
		if(menor > num)then	menor := num;
		cont := cont + 1;
	end;

writeln('A soma dos numeros e: ' ,soma);
writeln(' ');
media := (soma/cont);
writeln('A media da turma: ',media:2:1);
writeln('O maior  numero e: ' ,maior);
writeln('O menor  numero e: ' ,menor);
writeln(' ');

writeln(' ');
writeln(' ');
writeln(' ');
end.
