
{2- Faça um programa que exiba na tela os números de n à m, os
valores de n e m devem ser escolhidos pelo usuário.}


program c15a35;

var
	i,f : integer;
procedure contador;
	begin
		writeln('Informe o valor inicial');
		readln(i);
		writeln('Informe o valor final');
		readln(f);
		writeln('*********************');
		while(i <= f) do
		 begin
			writeln(i);
			i := i + 1;
		end;
	end;

begin
	contador;
end.
