import "dart:io";
import 'dart:math';

// import 'dart:svg';
// import 'dart:math';

void main() {
  zadanie1();
  //zadanie2();
  // zadanie3();
}

// 1) Создайте программу, которая просит пользователя ввести свое имя и возраст.
// Распечатайте сообщение, в котором говорится, сколько лет и как зовут.
void zadanie1() {
  stdout.write("Введите ваше имя: ");
  String name = stdin.readLineSync();
  //сюда я хотел бы поставить блокировку(сообщение об ошибке), если пользователь введет символы в имени, но пока не смог

  stdout.write("Введите ваш возраст: ");
  int age = int.parse(stdin.readLineSync());

  if (age < 0 || age > 120) {
    print("Вам не может быть столько лет");
  } else if (age % 10 >= 2 && age % 10 == 4)
    print("Ваше имя: $name, Вам $age года");
  else if (age % 10 == 1)
    print("Ваше имя: $name, Вам $age год");
  else
    print("Ваше имя: $name, Вам $age лет");
}

// 2) Создайте программу, которая просит у пользователя номер.
// В зависимости от того, четное или нечетное число, распечатайте соответствующее сообщение для пользователя.
void zadanie2() {
  stdout.write("Ведите любой номер: ");
  int number = int.parse(stdin.readLineSync());
  if (number % 2 == 0) {
    print("Ваше число четное");
  } else {
    print("Ваше число нечетное");
  }
}

// 3) Возьмите список, скажем, например, такой:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// и напишите программу. Распечатайте сообщение с элементами меньше 5, обращаясь по индексу.
void zadanie3() {
  List array1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 4];
  print(array1);

  for (int i = 0; i < array1.length; i++) {
    if (array1[i] < 5) {
      print(array1[i]);
    }
  }

  List array2 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 4];
  print(array2);

  for (var i in array2) {
    if (i < 5) {
      print(i);
    }
  }

  stdout.write("Введите размер массива: ");
  int size = int.parse(stdin.readLineSync());
  var rand = new Random();
  var array = List.generate(size, (_) => rand.nextInt(10));
  print(array);

  for (int i = 0; i < size; i++) {
    if (array[i] < 5) {
      print(array[i]);
    }
  }
}
