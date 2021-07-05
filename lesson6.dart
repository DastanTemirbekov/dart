import 'dart:io';

void main() {
//task1();
//task2();
//task3();
  task4();
}

// 1) Задача с массивом чисел
// Вернуть заданное число в обратном порядке
task1() {
  String x = "159";
  List array = x.split('');
  print(array);
  List c = [];

  for (int i = array.length - 1; i >= 0; i--) {
    c.add(array[i]);
  }
  print(c);
}

// 2) Задача с массивом чисел
// Вернуть индексы равные сумме числа который задается вторым параметром
task2() {
  List a = [2, 7, 11, 15];
  int b = 9;
  List array = [];
  for (int i = 0; i < a.length; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] + a[j] == b) {
        array = [i, j];
        print(array);
      }
    }
  }
}

// 3) Задача с массивом чисел
// Объедините два отсортированных связанных списка и верните их как
// отсортированный список. Список должен быть составлен путем объединения узлов первых двух списков.
task3() {
  // пузырьковая сортировка
  List a = [1, 2, 4];
  List b = [1, 3, 4];
  List c = a + b;
  print('$c изначально');
  int prom = 0; // промежуточная переменная
  for (int i = 1; i < c.length; i++) {
    for (int j = c.length - 1; j >= i; j--) {
      if (c[j - 1] > c[j]) {
        prom = c[j - 1]; // правило трех стаканов 3=1
        c[j - 1] = c[j]; // 1=2
        c[j] = prom; // 2=3
      }
    }
  }
  print(c);

// 2 вариант
  List aa = [1, 2, 4];
  List bb = [1, 3, 4];
  List cc = aa + bb;
  cc.sort((aa, bb) => aa.compareTo(bb));
  print("$cc по возрастанию");
  cc.sort((bb, aa) => aa.compareTo(bb));
  print("$cc по убыванию");

//3 вариант
  List aaa = [1, 2, 4];
  List bbb = [1, 3, 4];
  List ccc = aaa + bbb;
  print(ccc);
  var up = ccc..sort(); // возрастание
  var down = ccc.reversed.toList(); // убывание
  print(up);
  print(down);
}

// 4)Допустимые круглые скобки
// Учитывая строку s, содержащую только символы '(', ')', '{', '}', '[', ']',
// определите, действительна ли входная строка.
task4() {
  stdout.write("s = ");
  String a = stdin.readLineSync();
  int count = 0;
  int count1 = 0;
  int count2 = 0;
  bool q = false;

  for (int i = 0; i < a.length; i++) {
    if (a[i] == '(') {
      count++;
    }
    if (a[i] == ')') {
      count--;
    }
    if (count < 0) {
      break;
    }

    if (a[i] == '{') {
      count1++;
    }
    if (a[i] == '}') {
      count1--;
    }
        if (count1 < 0) {
      break;
    }

    if (a[i] == '[') {
      count2++;
    }
    if (a[i] == ']') {
      count2--;
    }
        if (count2 < 0) {
      break;
    }
  }

  if (count == 0 && count1 == 0 && count2 == 0) {
    print(true);
  } else {
    print(false);
  }
}
