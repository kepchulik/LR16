begin
  var n := ReadInteger('сколько элементов');
  var a := ArrRandomInteger(n, -5, 20);
  writeln('массив: ', a);
  
  var L1 := new List<integer>;
  var L2 := new List<integer>;
  
  foreach var x in a do
    if x > 0 then
      L1 += x
    else if x < 0 then
      L2 += x;
  
  writeln('L1: ', L1);
  writeln('L2: ', L2);
end.