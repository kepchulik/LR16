var
  god: set of byte;
  goda: set of byte;
  n: integer;

begin
  god := [1];
  goda := [2, 3, 4];

  write('возраст: ');
  readln(n);

  if (n mod 100 in [11, 12, 13, 14]) then
    writeln(n, ' лет')
  else if n mod 10 in god then
    writeln(n, ' год')
  else if n mod 10 in goda then
    writeln(n, ' года')
  else
    writeln(n, ' лет');
end.