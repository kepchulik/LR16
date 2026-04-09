begin
  var k := ReadInteger('сколько элементов');
  write('массив: ');
  var a := ReadArrInteger(k);
  var n := ReadInteger('введите n');
  var i := a.IndexMin;
  a := a[:i] + Arr(n) + a[i:];
  writeln('результат: ', a);
end.