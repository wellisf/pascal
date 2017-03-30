{faça um programa que pergunte ao usuario um numero inteiro, e faça o fatorial dele. 
Ex: 
4*4
4*3
4*2
4*1}

program fatorial_5;

var

	num, cont, soma : longint;

begin
 soma := 1;
 cont := 0;
 writeln('Informe um numero');
 readln(num);
 writeln(' ');

 	for cont := num downto 2 do 
 	begin
 	 	//writeln(num*num-1);
 	 	writeln(soma);
 	 	soma := soma*cont;
 	 	writeln(soma);
    end;
  writeln(num,'!= ',soma);
end.




