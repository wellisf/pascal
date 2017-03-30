program caledario;

var
	hr : integer;
	estacao : integer;

procedure hora(hr : integer);
	begin
		case hr of 
		 	6 .. 11 : writeln('Bom Dia! ');
		 	12 .. 17 : writeln('Bom tarde! ');
		 	18 .. 23 : writeln('Boa Noite! ');
		 	0 .. 5 : writeln('Boa madru!');
		end;
	end; 

function season(estacao : integer ):string; // o valor q saira, o tipo
	begin
		if    (estacao = 9)  or (estacao = 10)  then season := 'Primavera'else
		 if   (estacao = 4)  or (estacao = 5)   then season := 'Outono'   else
		  if  (estacao >= 6) and (estacao <= 8) then season := 'Inverno'  else 
		   if (estacao > 10) and (estacao <= 12)then season := 'Verão'    else
		    if(estacao <= 12)   				then season := 'Verão'    else season := 'Invalido';
	end;
		
begin
	writeln('Informe a hora');
	readln(hr);
	writeln('Informe o mes');
	readln(estacao);
	hora(hr);
	writeln(season(estacao));

	
end.