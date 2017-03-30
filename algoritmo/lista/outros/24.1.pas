program tabela_crescente;

var
	n : array[1..9] of integer;
	cont, aux, cont2 ,maior_valor, end_cont : integer;

begin
	maior_valor := 0;
	cont := 1;
	while(cont <= 3) do
	begin
	 writeln('Informe um numero');
	 readln(n[cont]);
	 cont := cont + 1;
	end;
 writeln(' ');
	for cont := 3 downto  1 do 
	 begin
		for cont2 := 1 to cont do 
	 	 begin
			if(maior_valor < n[cont]) then  // O maior valor
			begin 
		  	 maior_valor := n[cont];
		  	 end_cont := cont2;
		 	end; 
 	 	 end;		 
	 aux := n[cont];
	 n[cont] := maior_valor;
	 n[end_cont] := aux;
	 maior_valor := 0; 		
 	end;
 writeln(' ');


 if (num[1] > valor 2) and (valor2 > valor3) then
begin
valor3 := m1;
valor2 := m2;
valor1 := m3;
end
else if (valor1 > valor3) and (valor2 < valor1) then
begin
valor3 := m3;
valor2 := m1;
valor1 := m2;
end
else if (valor1 < valor3) and (valor3 < valor2) then
begin
valor3 := m2;
valor2 := m3;
valor1 := m1;
end

end. 
