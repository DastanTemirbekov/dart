void main() {
  // first_string("Dastan");
  // second_string("samsung");

  // first_int(5);
  // second_int(4);

  // first_bool('123');
  // second_bool(12, 55);

  city_func("Dastan");
}

String first_string(String name) {
  switch (name) {
    case "Dastan":
      print('Правильно (Сработал кейс 1)');
      break;
    case "Aibek":
      print('Правильно (Сработал кейс 2)');
      break;
    case "Isken":
      print('Правильно (Сработал кейс 3)');
      break;
    default:
      print("Это другое имя");
      break;
  }
  return name;
}

String second_string(String phone) {
  switch (phone) {
    case "xiaomi":
      print('Правильно (Сработал кейс 1)');
      break;
    case "samsung":
      print('Правильно (Сработал кейс 2)');
      break;
    case "iphone":
      print('Правильно (Сработал кейс 3)');
      break;
    default:
      print("Это что-то другое");
      break;
  }
  return phone;
}

int first_int(int number) {
  switch (number) {
    case 1:
      print("Сработал кейс 1");
      break;
    case 2:
      print("Сработал кейс 2");
      break;
    case 3:
      print("Сработал кейс 3");
      break;
    case 4:
      print('Сработал кейс 4');
      break;
    case 5:
      print("Сработал кейс 5");
      break;
    default:
      print("Ничего не сработало");
      break;
  }
  return number;
}

int second_int(int numb) {
  switch (numb) {
    case 1:
      print("$numb - Один");
      break;
    case 2:
      print("$numb - Два");
      break;
    case 3:
      print("$numb - Три");
      break;
    case 4:
      print('$numb - Четыре');
      break;
    case 5:
      print("$numb - Пять");
      break;
    default:
      print("Вы ввели другое число");
      break;
  }
  return numb;
}

bool first_bool(String a) {
  bool b = a.length < 5;
  switch (a.length) {
    case 1:
      print(!b);
      break;
    case 2:
      print(b);
      break;
    default:
      print(b);
      break;
  }
  return b;
}

bool second_bool(int a, int b) {
  int sum = a + b;
  bool check = true;
  switch (check) {
    case true:
      if (sum < 50) {
        print('1111 $check');
      } else if (sum > 50) print('2222 ${!check}');
      break;
    // case false:
    //   if (sum > 50) {
    //     print('2 ${!check}');
    //   }
    //   break;
    default:
      print(!check);
      break;
  }
  return check;
}

// #2 Есть String city = "Ankara";
// Сделать его массивом и пройтись по нему чтобы вытащить количество похожих букв, используя цикл While;
String city_func(String city_name) {
  List a = city_name.split('');
  print(a);
  int i = 0;
  while (i < a.length) {
    var j = 0;
    var count = 0;
    while (j < a.length) {
      if (a[i] == a[j]) {
        count++;
      }
      j++;
    }
    print("Буква ${a[i]} - $count");
    i++;
  }
  return city_name;
}
