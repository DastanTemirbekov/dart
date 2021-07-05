import 'dart:io';

void main() {
  print(check());
}

int check() {
  stdout.write('Введите число: ');
  String enter = stdin.readLineSync();
  List array = enter.split('',);
  print(array);
  int max = int.parse(array[0]);
  for (int i = 0; i < array.length; i++) {
    int next = int.parse(array[i]);
    if (next > max) {
      max = next;
    }
  }
  return max;
}
