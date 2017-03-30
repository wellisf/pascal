program vs;
//45vezes
//clrscr;
var
	nota : array[0..45] of integer;
	cont, vezes : integer;
begin
	writeln('Informe quantas notas deseja inserir');
	readln(vezes);
	for cont:=1 to vezes do 
	 begin
	 	writeln('Informe a nota');
	 	readln(nota[cont]);
	end;

	writeln('________________________________________');
	writeln(' ');
	writeln('Estao de VS');
	for cont:=1 to vezes do 
	 	if(nota[cont]>=40) and (nota[cont] <= 60) then writeln(nota[cont]);
	

end.