program tabuadaX;

var
	cont, num : integer;

begin
writeln('');
writeln('');
writeln('');
writeln('Informe o numero para a tabuada');
readln(num);
cont := 0;
writeln('A tabuada de ',num);
	while(cont < 11) do
       begin
       writeln(num,'x',cont,'= ',cont*num);
       cont:= cont + 1;
       end;

writeln('');
writeln('');
writeln('');
end.
