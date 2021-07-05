import 'dart:io';

void main() {
  //print(task1());
  print(task2());
  print(task3());
}

int task1() {
  stdout.write('Введите число: ');
  String enter = stdin.readLineSync();
  List array = enter.split(',');
  print(array);
  List newArray = [];
  var sum;
  for (int i = 0; i < array.length; i++) {
    int numbers = int.parse(array[i]);
    newArray.add(numbers);
    sum = newArray.reduce((init, next) => init + next);
  }
  return sum;
}

List task2() {
  String enter = 'qwerty';
  List<String> array = enter.split('');
  print(array);
  List newArray = [];
  String count = "";
  for (int i = 0; i < array.length; i++) {
    count += enter[i];
    newArray.add(count);
  }
  //   array.reduce((i, j) {
  //   newArray.add(i);
  //   print("is i: $i, is j: $j");
  //   return i + j;
  // });
  return newArray;
}

List task3() {
  List array = [[1,23,3], [4,5], [16,7]];
  List newArray = [];
  for (int i = 0; i < array.length; i++) {
    newArray.addAll(array[i]);
    newArray.sort();
  }
  return newArray;
}
