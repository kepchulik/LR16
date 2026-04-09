begin
  var n := ReadInteger ('сколько элементов');
  write('массив: ');
  var a := ReadArrInteger(n);
  var s := a[1::2];
  writeln('срез: ', s);
  writeln('мин: ', s.Min);
end.