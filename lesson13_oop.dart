// определение класса
class Student {
  String stdName;
  int stdAge;
  bool stdRoll_nu;

// класс функция
  showStdInfo() {
    print('Имя студента: ${stdName}');
    print('Возраст студента: ${stdAge}');
    print('Номер ученического списка: ${stdRoll_nu}');
  }
}

void main() {
  // создание объекта с именем std
  var std = new Student();
  std.stdName = 'das';
  std.stdAge = 15;
  std.stdRoll_nu = true;
  std.showStdInfo();
}
