import 'dart:io';

void main() {
  //1 string
  stdout.write("Введите бренд телефона(Например: iphone, samsung, xiaomi):\n");
  String phone = stdin.readLineSync();
  switch (phone) {
    case "xiaomi":
      print(true);
      break;
    case "samsung":
      print(true);
      break;
    case "iphone":
      print(true);
      break;
    default:
      print("false");
      break;
  }

  // String name = "Dastan";
  // switch (name) {
  //   case "Dastan":
  //     print(true);
  //     break;
  //   case "Aibek":
  //     print(true);
  //     break;
  //   case "Isken":
  //     print(true);
  //     break;
  //   default:
  //     print(false);
  //     break;
  // }

  //2 int
//    stdout.write("Столица Кыргызтана(Укажите цифру):\n");
//   print("1) Нарын;\n2) Ош;\n3) Талас;\n4) Бишкек;\n5) Нет правильного ответа.");
//   int num = int.parse(stdin.readLineSync());
//   switch (num){
//       case 1:
//       print("Неправильно");
//       break;
//     case 2:
//       print("Неправильно");
//       break;
//     case 3:
//       print("Неправильно");
//       break;
//     case 4:
//       print('Вы молодец!');
//       break;
//     case 5:
//       print("Неправильно");
//       break;
//     default:
//       print("Такого варианта нет");
//       break;
// }

//    stdout.write("Введите число от 1 до 5: ");
//   int number = int.parse(stdin.readLineSync());
//   switch (number){
//       case 1:
//       print("$number - Один");
//       break;
//     case 2:
//       print("$number - Два");
//       break;
//     case 3:
//       print("$number - Три");
//       break;
//     case 4:
//       print('$number - Четыре');
//       break;
//     case 5:
//       print("$number - Пять");
//       break;
//     default:
//       print("Вы ввели другое число");
//       break;
// }

//3 bool
  // String a = "123";
  // bool b = a.length < 5;
  // switch (a.length) {
  //   case 1:
  //     print(!b);
  //     break;
  //   case 2:
  //     print(b);
  //     break;
  //   default:
  //     print(b);
  //     break;
  // }

  // bool b = true;
  // int qwe = 5;
  // qwe == b;
  // switch (qwe) {
  //   case 1:
  //     if (!b) {
  //       print(!b);
  //     }
  //     break;
  //   default:
  //     print(b);
  //     break;
  // }
  
// #2 Есть String city = "Ankara";
// Сделать его массивом и пройтись по нему чтобы вытащить количество похожих букв, используя цикл While;
  //2ое задание 1 вариант
  // String city = "Ankara";
  // List a = city.split('');
  // print(a);
  // int i = 0;
  // while (i < city.length) {
  //   var j = 0;
  //   var count = 0;
  //   while (j < city.length) {
  //     if (city[i] == city[j]) {
  //       ++count;
  //     }
  //     j++;
  //   }
  //   print("Буква ${city[i]} - $count");
  //   i++;
  // }

  // 2 вариант
  // String city = "Ankara";
  // List a = city.split('');
  // print(a);
  // stdout.write("Введите букву: ");
  // String letter = stdin.readLineSync();
  // int i = 0;
  // int count = 0;
  // while (i < city.length) {
  //   letter.contains(a[i]);
  //   if (a[i] == letter) {
  //     count++;
  //   }
  //   i++;
  // }
  // print('Буква $letter встречается $count раз(-а)');
}
