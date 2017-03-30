program fileira_um;

var
	nome : string[20];
	cont : integer;

begin
 writeln('informe um nome');
 readln(nome);


 for cont := 1 to length (nome) do writeln ('nome',nome[cont]);
 
end.

 