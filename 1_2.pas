begin
  var n:=ReadInteger ('сколько элементов');
  write('массив: ');
  var a:=ReadArrInteger(n);
  a[1::2].Print;
end.