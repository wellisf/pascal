program determinateAlpha;

const
  MAX = 3;

type
  Tgiven = integer;
  Tmatrix = array[1..MAX,1..MAX] of Tgiven;

var
     matrix : Tmatrix;
     det : integer;

procedure kickoff( var matrix : Tmatrix);
var
  i, j, x : integer;
begin
  x := 1;
  for i := 1 to max do
  begin
    for j := 1 to max do
    begin
      matrix[i,j] := x;
      x:= x+1;
    end;
  end;
end;

procedure determinat( matrix : Tmatrix );
var
  i, j : integer;
  primary, secondary : integer;
  controlPrimary , controlSecondary : integer;
  p1 , p2 , p3 : integer;
  s1 , s2 , s3 : integer;

begin
  controlPrimary := 1;

  for i := 1 to max do
  begin
    for j := 1 to max do
    begin
      if( controlPrimary = j ) then p1 := p1 + matrix[i,j];

        //erro uso de variavel demais, do outro jeito e mais viável
    end;
    controlPrimary := controlPrimary + 1;
  end;
end;

procedure print( matrix : Tmatrix );
var
  i, j : integer;
begin
  for i := 1 to max do
  begin
    for j := 1 to max do write(matrix[i,j]);
      writeln;
  end;
end;

begin
  kickoff(matrix);
  print(matrix);
end.
