begin
  var n := ReadInteger('сколько элементов');
  write('массив: ');
  var a := ReadArrInteger(n);
  var k := a.IndexMax;
  writeln('индекс максимального элемента: ', k);
  a := a[:k] + a[k+1:];
  writeln('результат: ', a);
end.