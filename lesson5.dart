import 'dart:io';
import 'dart:math';

void main() {
task1();
//task2();
//task3();
}

task1() {
  // 1) Возьмем, например, два списка:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// и напишите программу, которая возвращает список, содержащий только общие для них элементы (без дубликатов).
// Убедитесь, что ваша программа работает с двумя списками разного размера.

// var rand = new Random();
// var a = List.generate(10, (_)=>rand.nextInt(50));
// var b = List.generate(13, (_)=>rand.nextInt(50));
// print (a);
// print (b);

  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List c = [];
  bool z = true;
  for (int i = 0; i < a.length; i++)
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        for (int k = 0; k < c.length; k++) {
          if (c[k] == a[i]) {
            z = false;
          } else
            z = true;
        }
        if (z) {
          c.add(b[j]);
        }
      }
    }
  print(c);
}

// 2) Допустим, вам дан список, сохраненный в переменной:
// а = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Напишите код Dart, который берет этот список и создает новый список,
// в котором есть только четные элементы этого списка.

void task2() {
  List array = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) print(array[i]);
  }
}

//  3) Создайте функцию, которая принимает две строки в качестве аргументов и возвращает,
//  сколько раз первая строка (один символ) была найдена во второй строке
void task3() {
  stdout.write("Введите текст: ");
  String text = stdin.readLineSync();
  stdout.write("Введите символ: ");
  String symbol = stdin.readLineSync();

// String text = "dastan";
// String symbol = "a";
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    symbol.compareTo(text);
    if (text[i] == symbol) count++;
  }
  print("Символ << $symbol >> повторяется $count раз(-а)");
}

// String text2 = "dastan";
// String letter2 = "a";
// letter2.compareTo(text2);
// print(letter2);}
