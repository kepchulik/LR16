begin
  var n := ReadInteger('сколько элементов');
  write('список: ');
  var a := ReadArrInteger(n);
  var L := Lst(a);
  var k := L.IndexMax;
  L.RemoveAt(k);
  writeln('результат: ', L);
end.