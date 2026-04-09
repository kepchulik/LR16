type
  PNode = ^Node;
  Node = record
    data: integer;
    next: PNode;
  end;

var
  Head, Tail, p, NewNode: PNode;
  i, x, mn, mx: integer;

begin
  Head := nil;
  Tail := nil;

  writeln('Введите 10 элементов списка:');
  for i := 1 to 10 do
  begin
    readln(x);
    New(NewNode);
    NewNode^.data := x;
    NewNode^.next := nil;

    if Head = nil then
    begin
      Head := NewNode;
      Tail := NewNode;
    end
    else
    begin
      Tail^.next := NewNode;
      Tail := NewNode;
    end;
  end;

  writeln('Список:');
  p := Head;
  while p <> nil do
  begin
    write(p^.data, ' ');
    p := p^.next;
  end;
  writeln;

  mn := Head^.data;
  mx := Head^.data;

  p := Head^.next;
  while p <> nil do
  begin
    if p^.data < mn then
      mn := p^.data;
    if p^.data > mx then
      mx := p^.data;
    p := p^.next;
  end;

  writeln('Минимальный элемент: ', mn);
  writeln('Максимальный элемент: ', mx);
end.