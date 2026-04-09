type
  PNode = ^Node;
  Node = record
    word: string[40];
    count: integer;
    next: PNode;
  end;

function CreateNode(NewWord: string): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.word := NewWord;
  NewNode^.count := 1;
  NewNode^.next := nil;
  Result := NewNode;
end;

procedure AddFirst(var Head: PNode; NewNode: PNode);
begin
  NewNode^.next := Head;
  Head := NewNode;
end;

procedure AddAfter(p, NewNode: PNode);
begin
  NewNode^.next := p^.next;
  p^.next := NewNode;
end;

procedure AddBefore(var Head: PNode; p, NewNode: PNode);
var pp: PNode;
begin
  pp := Head;
  if p = Head then
    AddFirst(Head, NewNode)
  else
  begin
    while (pp <> nil) and (pp^.next <> p) do
      pp := pp^.next;
    if pp <> nil then
      AddAfter(pp, NewNode);
  end;
end;

function Find(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord <> pp^.word) do
    pp := pp^.next;
  Result := pp;
end;

function FindPlace(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord > pp^.word) do
    pp := pp^.next;
  Result := pp;
end;

function TakeWord(var F: Text): string;
var c: char;
begin
  Result := '';
  c := ' ';
  while not eof(F) and (c <= ' ') do
    read(F, c);

  while (c > ' ') do
  begin
    Result := Result + c;
    if eof(F) then break;
    read(F, c);
  end;
end;

var
  F: Text;
  Head, p, place, NewNode: PNode;
  s: string;
  k: integer;

begin
  Head := nil;

  assign(F, 'input.txt');
  reset(F);

  while not eof(F) do
  begin
    s := TakeWord(F);
    if s <> '' then
    begin
      p := Find(Head, s);
      if p <> nil then
        p^.count := p^.count + 1
      else
      begin
        NewNode := CreateNode(s);
        place := FindPlace(Head, s);
        if place = nil then
        begin
          if Head = nil then
            AddFirst(Head, NewNode)
          else
          begin
            p := Head;
            while p^.next <> nil do
              p := p^.next;
            AddAfter(p, NewNode);
          end;
        end
        else
          AddBefore(Head, place, NewNode);
      end;
    end;
  end;

  close(F);

  writeln('Алфавитно-частотный словарь:');
  p := Head;
  k := 0;
  while p <> nil do
  begin
    writeln(p^.word, ' - ', p^.count);
    k := k + 1;
    p := p^.next;
  end;

  writeln('Количество различных слов: ', k);
end.