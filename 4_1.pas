type
  PNode = ^Node;
  Node = record
    data: integer;
    next: PNode;
  end;

procedure Push(var Head: PNode; x: integer);
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.data := x;
  NewNode^.next := Head;
  Head := NewNode;
end;

function Pop(var Head: PNode): integer;
var p: PNode;
begin
  p := Head;
  Result := p^.data;
  Head := Head^.next;
  Dispose(p);
end;

var
  f1, f2: text;
  S: PNode;
  x: integer;

begin
  S := nil;

  assign(f1, 'iinput.txt');
  reset(f1);

  while not eof(f1) do
  begin
    read(f1, x);
    Push(S, x);
  end;

  close(f1);

  assign(f2, 'output.txt');
  rewrite(f2);

  while S <> nil do
    write(f2, Pop(S), ' ');

  close(f2);

  writeln('Данные переписаны в обратном порядке.');
end.