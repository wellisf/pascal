program atividade1;
var
	p1, p2, media : real;

begin
   writeln('Informe sua nota');
	read(p1);
	writeln('Informe sua nota');
	read(p2);

	media := (p1 + p2) /2 ;
	writeln('Sua media foi:',media);

end.

{int p1, p2, media;

	write('Informe sua nota \n');
	read('%i',&p1);
	write('Informe sua nota \n');
	read('%i',&p2);

	media = (p1+p2)/2;
	write('\nSua media foi: %i\n\n', media);}
