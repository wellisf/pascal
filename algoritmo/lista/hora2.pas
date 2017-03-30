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

procedure season(estacao : integer );
	begin
		if    (estacao = 9)  or (estacao = 10)  then writeln('Primavera')else
		 if   (estacao = 4)  or (estacao = 5)   then writeln('Outono')   else
		  if  (estacao >= 6) and (estacao <= 8) then writeln('Inverno')  else 
		   if (estacao > 10) and (estacao <= 12)then writeln('Verão')    else
		    if(estacao <= 12)   				then writeln('Verão')    else writeln('Invalido');
	end;
		
begin
	writeln('Informe a hora');
	readln(hr);
	writeln('Informe o mes');
	readln(estacao);
	hora(hr);
	season(estacao);
	
end.

	
