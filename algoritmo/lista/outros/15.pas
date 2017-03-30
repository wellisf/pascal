// ler 30 numeros e soma-los

program somador;

type 
 	int = integer;

var
	cont, soma, num : int;

begin
writeln(' ');
writeln(' ');
writeln(' ');
	cont := 0;
	soma := 0;
	while (cont < 3 ) do
	begin
	writeln('informe um numero');
	readln(num);
	soma := soma + num;
	cont := cont + 1;
	end;
	writeln('A soma dos numeros e: ' ,soma);



writeln(' ');
writeln(' ');
writeln(' ');
end.

