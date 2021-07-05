import 'dart:io';


void main() {
  //task1();//1 задание
  // print(task2(13));     //2 задание
  print(check());  //3 задание
  // print(check('5>4'));  //3 задание
  // print(check('1<47')); //3 задание
}

// #1 Сделайте функцию. Учитывая число, верните массив, содержащий две половины числа.
// Если число нечетное, сделайте крайнее правое число выше.
void task1() {
    stdout.write('Введите число: ');
  int number = int.parse(stdin.readLineSync());
  int left = number ~/ 2;
  int right = number - left;
  List array = [left, right];
  array.sort();
  print(array);
  // if (number > 0) {
  //   if (number % 2 == 1) {
  //     array = [left, right];
  //   }
  // } else if (number < 0) {
  //   if (number % 2 == 1) {
  //     // left -= 0.5;
  //     // right += 0.5;
  //     array = [left, right];
  //   }
  // }
  // // print(number);
  // print(array);
  // return number;
}

// #2 Создайте функцию, которая принимает число в качестве аргумента. \
// Сложите все числа от 1 до числа, которое вы передали функции.
// Например, если на входе 4, ваша функция должна вернуть 10, потому что 1 + 2 + 3 + 4 = 10.
int task2(int number) {
  if (0 < number && number <= 1000) {
    var sum;
    List array = [];
    for (int i = 1; i <= number; i++) {
      array.add(i);
      sum = array.reduce((init, next) => init + next);
    }
    print(array);
    return sum;
  } else
    print("out of range");
}

// #3 В этом задании вам будет дана связь между двумя числами, записанная в виде строки.
// Напишите функцию, которая определяет, является ли отношение истинным или ложным.
String check() {
  stdout.write('Введите выражение: ');
  String qwe = stdin.readLineSync();
  List array = [];
  if (qwe.contains('=')) {
    array = qwe.split('=');
    print(array);
    array = [int.parse(array[0]), int.parse(array[1])];
    print(array);
    if (array[0] == array[1]) {
      return "true";
    } else {
      return "false";
    }
  } else if (qwe.contains('<')) {
    array = qwe.split('<');
    array = [int.parse(array[0]), int.parse(array[1])];
    if (array[0] < array[1]) {
      return "true";
    } else {
      return "false";
    }
  } else if (qwe.contains('>')) {
    array = qwe.split('>');
    array = [int.parse(array[0]), int.parse(array[1])];
    if (array[0] > array[1]) {
      return "true";
    } else {
      return "false";
    }
  } else {
    return 'Error';
  }
}
