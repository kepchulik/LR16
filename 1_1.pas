begin
  var n:=ReadInteger('сколько элементов');
  write('массив: ');
  var a:=ReadArrInteger(n);
  writeln('результат:');
  a[::-1].Print;
end.