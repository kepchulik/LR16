var
  s: string;
  i: integer;
  ok: boolean;
  first, other: set of char;

begin
  first := ['a'..'z', 'A'..'Z', '_'];
  other := ['a'..'z', 'A'..'Z', '0'..'9', '_'];

  write('строка: ');
  readln(s);

  ok := true;

  if length(s) = 0 then
    ok := false
  else
  begin
    if not (s[1] in first) then
      ok := false;

    for i := 2 to length(s) do
      if not (s[i] in other) then
        ok := false;
  end;

  writeln(ok);
end.