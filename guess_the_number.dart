import 'dart:io';
import 'dart:math';

void main() {
  choose_func();
}

choose_func() {
  print("Кто будет угадывать? Вы или комьютер?\n1) Вы;\n2) Компьютер. ");
  int numb = int.parse(stdin.readLineSync());
  switch (numb) {
    case 1:
      print('Угадывать будете Вы. Удачи!');
      i_func();
      break;
    case 2:
      print('Угадывать будет Компьютер. Удачи!');
      comp_func();
      break;
    default:
      print('Что-то пошло не так, выберите снова...');
      choose_func();
      break;
  }
}

i_func() {
  print('Компьютер загадал число от 0 до 100. Вам предстоит угадать его. Выберите уровень сложности:\n1 - легкий;\n2 - cложный');
  int level = int.parse(stdin.readLineSync());
  switch (level) {
    case 1:
      print('Вы выбрали легкий уровень. Удачи!');
      var rand = new Random();
      int randomNum = rand.nextInt(100);
      print(randomNum);
      int number;
      stdout.write("Введите число: ");
      while (randomNum != number) {
        number = int.parse(stdin.readLineSync());
        if (randomNum == number) {
          print('Вы угадали!');
          restart_func();
          break;
        } else if (randomNum > number)
          print('Больше, попробуйте еще раз...');
        else if (randomNum < number) print('Меньше, попробуйте еще раз...');
      }
      break;
    case 2:
      print('Вы выбрали сложный уровень. У вас всего 5 попыток. Удачи!');
      var rand = new Random();
      int randomNum = rand.nextInt(100);
      //print(randomNum);
      int count = 5;
      stdout.write("Введите число: ");
      for (int i = 0; i < 5; i++) {
        int number = int.parse(stdin.readLineSync());
        if (randomNum == number) {
          print('вы угадали');
          restart_func();
          break;
        } else if (randomNum < number) {
          print('Меньше');
          count--;
          if (count == 0) {
            print('вы проиграли');
            break;
          }
          print('попробуйте еще раз. осталось попыток: $count');
        } else if (randomNum > number) {
          print('Больше');
          count--;
          if (count == 0) {
            print('вы проиграли');
            break;
          }
          print('попробуйте еще раз. осталось попыток: $count');
        }
      }
      break;
  }
}

comp_func() {
  print('Загадайте число от 0 до 100. Выберите уровень сложности:\n1 - легкий;\n2 - cложный');
  int level = int.parse(stdin.readLineSync());
  stdout.write("Введите число(компьютер не видит его): ");
  int.parse(stdin.readLineSync());
  switch (level) {
    case 1:
      rec_func(50, 0, 100);
      newrand_func();
      break;
    case 2:
      rec_func(50, 0, 100);
  }
}

newrand_func() {
  var rand = new Random();
  int randomNum = rand.nextInt(100);
  print(randomNum);
  stdout.write('Это число?\n1) да\n2) нет\n');
  int choose = int.parse(stdin.readLineSync());
  switch (choose) {
    case 1:
      print('Компьютер угадал ваше число...');
      break;
    case 2:
      newrand_func();
  }
}

rec_func(int mid, min, max) {
  print(mid);
  print('1) верно\n2) больше\n3) меньше');
  int answer = int.parse(stdin.readLineSync());
  if (answer == 1)
    restart_func();
  else if (answer == 2) {
    rec_func((mid + (max - mid) / 2).round(), min = mid, max);
  } else if (answer == 3) {
    rec_func((mid - (mid - min) / 2).round(), min, max = mid);
  }
}

restart_func() {
  print('Поздравляем, игра окончена! Хотите сыграть еще раз?\n1 - да;\n2 - нет.');
  stdout.write("Ваше действие: ");
  int restart = int.parse(stdin.readLineSync());
  switch (restart) {
    case 1:
      choose_func();
      break;
    case 2:
      print('Выход из игры...');
      break;
    default:
      print('Ошибка');
      break;
  }
}
