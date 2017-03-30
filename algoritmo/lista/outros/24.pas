program tabela_crescente;

var
	num : array[1..9] of integer;
	cont : integer;
	menor, maior : integer;
  final : string;
begin
 menor := 999;
 final := ('dnvo');
 while(final = 'dnvo') do
  begin
    for cont := 1 to 3 do
     begin
     writeln('Informe um numero');
     readln(num[cont]);
    end;
    writeln(' ');
    for cont := 1 to 3 do
    begin
   	  if(num[cont] > maior) then maior := num[cont];
  	  if(num[cont] <  menor) then menor := num[cont];
    end;	
    writeln('O menor numero:',menor);
    writeln('O maior numero:',maior);
 	
    {for cont := 1 to 3 do




 	 	for aux := 3 downto 1 do
 	 	 begin
 	 	  num[cont] :
 	 	end;
 	 end;}
    writeln('');
    if(num[1] > num[2]) and (num[2] > num[3]) then 
      begin
        writeln(num[3]);
        writeln(num[2]);
        writeln(num[1]);
    end;
 
    if(num[2] > num[3]) and (num[3] > num[1]) then 
      begin
        writeln(num[1]);
        writeln(num[3]);
        writeln(num[2]);
    end;

    if(num[3] > num[1]) and (num[1] > num[2]) then 
     begin
     writeln(num[2]);
     writeln(num[1]);
     writeln(num[3]);
    end;

    if(num[2] < num[1]) and (num[1] > num[3]) then 
    begin
      writeln(num[2]);
      writeln(num[3]);
      writeln(num[1]);
    end;

      if(num[3] > num[2]) and (num[2] > num[1]) then 
       begin
        writeln(num[1]);
        writeln(num[2]);
        writeln(num[3]);
      end;
    writeln('Digite SAIR para finalizar, Caso quera fazer um nova cosulta digite DNVO');
    readln(final);
 end;   
    readln(final);
 
 

end. 
