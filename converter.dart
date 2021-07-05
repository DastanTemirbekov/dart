import 'dart:io';

class Value {
  var som;
  var dollar;
  var euro;
  var ruble;
  var tenge;
}

class Buy extends Value {
  kurs() {
    dollar = 85;
    euro = 101;
    ruble = 1.11;
    tenge = 0.19;
    print('Доллары: ${dollar}\nЕвро: $euro\nРубли: $ruble\nТенге: $tenge');
  }
}

class Sell extends Value {
  kurs() {
    dollar = 84;
    euro = 102;
    ruble = 1.20;
    tenge = 0.21;
    print('Доллары: ${dollar}\nЕвро: $euro\nРубли: $ruble\nТенге: $tenge');
  }
}

som_to_other() {
  var value = new Buy();
  value.kurs();
  stdout.write('Выберите валюту, в которую хотите перевести сомы:\n1) доллар;\n2) евро;\n3) рубль;\n4) тенге;\n');
  int val = int.parse(stdin.readLineSync());
  stdout.write('Введите сомы: ');
  int summa = int.parse(stdin.readLineSync());
  switch (val) {
    case 1:
      print('${summa / value.dollar}');
      break;
    case 2:
      print('${summa / value.euro}');
      break;
    case 3:
      print('${summa / value.ruble}');
      break;
    case 4:
      print('${summa / value.tenge}');
      break;
    default:
      print('Error');
  }
}

other_to_som() {
  var value = new Sell();
  value.kurs();
  stdout.write('Выберите валюту, в которую хотите перевести сомы:\n1) доллар;\n2) евро;\n3) рубль;\n4) тенге;\n');
  int val = int.parse(stdin.readLineSync());
  switch (val) {
    case 1:
      stdout.write('Введите доллары: ');
      int summa = int.parse(stdin.readLineSync());
      print('${value.dollar * summa}');
      break;
    case 2:
      stdout.write('Введите евро: ');
      int summa = int.parse(stdin.readLineSync());
      print(value.euro * summa);
      break;
    case 3:
      stdout.write('Введите рубли: ');
      int summa = int.parse(stdin.readLineSync());
      print(value.ruble * summa);
      break;
    case 4:
      stdout.write('Введите тенге: ');
      int summa = int.parse(stdin.readLineSync());
      print(value.tenge * summa);
      break;
    default:
      print('Error');
  }
}

void main() {
  stdout.write(
      'Выберите действие:\n1) сомы в другую валюту?\n2) другую валюту в сомы?\n');
  int numb = int.parse(stdin.readLineSync());
  switch (numb) {
    case 1:
      som_to_other();
      break;
    case 2:
      other_to_som();
      break;
    default:
      print('Error');
  }
}
