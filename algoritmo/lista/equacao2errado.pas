program calc_delta;


procedure delta(a,b,c : real; var d: real);
		//=> variaveis locais, só funciona no procedimentos
	
     begin
		d := (b*b) – (4*a*c)
		writeln('Delta=',d);
	end;
//tem que esta em sequencia;

procedure raiz(a,b,c : real);
	var		//=> variaveis locais, só funciona no procedimentos
		r, r2, dt* : real;
		// * a variavel mudou de nome.
     begin
		delta(a,b,c,dt);
		if(d < 0 ) then writeln('sem raizes real') else 
		  if (d =0)  then 
			r1 := ((-b + sqrt(dt))/(2*a);
			r2 := r1;
			 else  
				r1 := ((-b + sqrt(dt))/(2*a);
				r2 := ((-b – sqrt(dt))/(2*a);
		end;
		writeln('Raízes', r1 ,'e', r2);
	end;

begin
		delta(a,b,c,d);
		delta(a,b,c,dt);
end.
