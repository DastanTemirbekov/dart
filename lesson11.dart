import 'dart:io';

void main() {
//print(task1());
//print(task2([1, 2, '123', 'asd', 2, 1, -5, -10]));
print(task3(['google', 'apple', 'aaaaaaaaaaa', 'micrsoft']));
}

// #1 Учитывая массив чисел, верните массив, который содержит все четные числа в исходном массиве,
// который также имеет четные индексы.(то есть и индекс и массив должен быть четным)
List task1() {
  stdout.write('Введите число: ');
  String enter = stdin.readLineSync();
  List array = enter.split('');
  List empty = [];
  for (int i = 0; i < array.length; i++) {
    int numbers = int.parse(array[i]);
    if (numbers.isEven) {
      if (i.isEven) {
        empty.add(numbers);
      }
    }
  }
  return empty;
}

// #2 Создайте функцию, которая принимает массив неотрицательных целых чисел и строк
// и возвращает новый массив без строк.
List task2(List array) {
  var ints = array.whereType<int>();
  List array1 = ints.toSet().toList();
  array1.removeWhere((i) => i<0);
  return array1;
}

// #3 Создайте функцию, которая принимает массив строк и возвращает массив,
// отсортированный от самого короткого к самому длинному.
task3(List str) {
  for (int i = 1; i < str.length; i++)
    for (int j = 0; j < i; j++) {
      if (str[j].length > str[j + 1].length) {
        String newStr = str[j];
        str[j] = str[j + 1];
        str[j + 1] = newStr;
      }
    }
  return str;
}