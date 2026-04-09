type
  PNode = ^Node;
  Node = record
    data: integer;
    next: PNode;
  end;

procedure AddLast(var Head, Tail: PNode; x: integer);
var NewNode: PNode;
begin
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

procedure PrintList(Head: PNode);
var p: PNode;
begin
  p := Head;
  while p <> nil do
  begin
    write(p^.data, ' ');
    p := p^.next;
  end;
  writeln;
end;

procedure PrintEven(Head: PNode);
var p: PNode;
begin
  p := Head;
  while p <> nil do
  begin
    if p^.data mod 2 = 0 then
      write(p^.data, ' ');
    p := p^.next;
  end;
  writeln;
end;

var
  Head, Tail: PNode;
  i, x: integer;

begin
  Head := nil;
  Tail := nil;

  writeln('Введите 10 элементов списка:');
  for i := 1 to 10 do
  begin
    readln(x);
    AddLast(Head, Tail, x);
  end;

  writeln('Список:');
  PrintList(Head);

  writeln('Четные элементы списка:');
  PrintEven(Head);
end.