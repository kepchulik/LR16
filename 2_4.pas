type toy = record
  name: string[20];
  price: integer;
  age: string[20];
end;

var 
  toys: array[1..3] of toy;
  f: file of toy;
  t: toy;
  i: integer;

begin
  with toys[1] do
  begin
    name := 'Машинка';
    price := 500;
    age := '3-7 лет';
  end;

  with toys[2] do
  begin
    name := 'Кукла';
    price := 700;
    age := '4-10 лет';
  end;

  with toys[3] do
  begin
    name := 'Конструктор';
    price := 1200;
    age := '6-12 лет';
  end;

  assign(f, 'toys.dat');
  rewrite(f);

  for i := 1 to 3 do
    write(f, toys[i]);

  close(f);

  reset(f);
  while not eof(f) do
  begin
    read(f, t);
    writeln('Название: ', t.name, ', цена: ', t.price, ', возраст: ', t.age);
  end;
  close(f);
end.