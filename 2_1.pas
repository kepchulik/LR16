type anketa = record
  fio: string;
  birth: string;
  kurs: 1..5;
end;

var student: anketa;

begin
  student.fio := 'Долгих Александр Андреевич';
  student.birth := '30.05.2006';
  student.kurs := 2;
  
  writeln('ФИО: ', student.fio);
  writeln('Дата рождения: ', student.birth);
  writeln('Курс: ', student.kurs);
end.