program abcd;
var
a,b,c,d:integer;
begin

writeln('ORDENAO POR BOLHA');

writeln('DIGITE 1 NUMERO');
readln(a);
writeln('DIGITE 2 NUMERO');
readln(b);
writeln('DIGITE 3 NUMERO');
readln(c);
if(a>b) or (a>c)then
if(b<c)then
begin
d:=a;
a:=b;
b:=d;
end
else
begin
d:=a;
a:=c;
c:=d;
end;
if(c<b)then
begin
d:=b;
b:=c;
c:=d;

writeln('A ORDEM e');
writeln(a);
writeln(b);
writeln(c);

end.
