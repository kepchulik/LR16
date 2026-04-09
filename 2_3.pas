type toy = record
  name: string;
  price: integer;
  age: string;
end;

var toys: array[1..3] of toy;
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

  writeln('Список игрушек:');
  for i := 1 to 3 do
    writeln('Название: ', toys[i].name, ', цена: ', toys[i].price, ', возраст: ', toys[i].age);
end.