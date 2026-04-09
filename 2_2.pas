type anketa = record
  fio: string;
  birth: string;
  kurs: 1..4;
end;

var students: array[1..3] of anketa;

begin
  students[1].fio := 'Долгих Александр Андреевич';
  students[1].birth := '30.05.2006';
  students[1].kurs := 2;

  students[2].fio := 'Петров Пётр Сергеевич';
  students[2].birth := '25.07.2005';
  students[2].kurs := 2;

  students[3].fio := 'Сидорова Анна Викторовна';
  students[3].birth := '08.11.2004';
  students[3].kurs := 4;

  writeln('Данные о студентах:');
  writeln('1. ФИО: ', students[1].fio, ', дата рождения: ', students[1].birth, ', курс: ', students[1].kurs);
  writeln('2. ФИО: ', students[2].fio, ', дата рождения: ', students[2].birth, ', курс: ', students[2].kurs);
  writeln('3. ФИО: ', students[3].fio, ', дата рождения: ', students[3].birth, ', курс: ', students[3].kurs);
end.